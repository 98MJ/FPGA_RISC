`timescale 1ns / 1ps

`include "uvm_macros.svh"
import uvm_pkg::*;


interface axi_interface (
    input logic ACLK,
    input logic ARESETn
);
    ////////////// READ Transaction ///////////
    // AR Channel
    logic [31:0] ARADDR;
    logic        ARVALID;
    logic        ARREADY;

    // R Channel
    logic [31:0] RDATA;
    logic        RVALID;
    logic        RREADY;


    ////////////// WRITE Transaction ///////////
    // AW Channel
    logic [31:0] AWADDR;
    logic        AWVALID;
    logic        AWREADY;

    // W Channel
    logic [31:0] WDATA;
    logic        WVALID;
    logic [ 3:0] WSTRB;
    logic        WREADY;

    // B Channel
    logic [ 1:0] BRESP;
    logic        BVALID;
    logic        BREADY;
endinterface


class seq_item extends uvm_sequence_item;
    rand logic [31:0] wdata;
    logic      [31:0] rdata;
    logic      [31:0] address;
    logic             write;  // 1'b1=write, 1'b0=read

    constraint wdata_c {
        wdata < 256;  // 1byte
    }
    ;


    function new(input string name = "seq_item");
        super.new(name);
    endfunction

    `uvm_object_utils_begin(seq_item)
        `uvm_field_int(wdata, UVM_DEFAULT);
        `uvm_field_int(rdata, UVM_DEFAULT);
        `uvm_field_int(address, UVM_DEFAULT);
        `uvm_field_int(write, UVM_DEFAULT);
    `uvm_object_utils_end

endclass


class axi_sequence extends uvm_sequence;
    `uvm_object_utils(axi_sequence)

    seq_item axi_seq_item;

    function new(input string name = "axi_sequence");
        super.new(name);
    endfunction


    task write_item();
        for (int i = 0; i < 16; i++) begin
            start_item(axi_seq_item);
            axi_seq_item.write   = 1'b1;  // write
            axi_seq_item.address = i;  // address increase by 1
            axi_seq_item.randomize();  // random wdata
            `uvm_info("SEQ", "Write Data send to driver", UVM_NONE);
            finish_item(axi_seq_item);
        end
    endtask

    task read_item();
        for (int i = 0; i < 16; i++) begin
            start_item(axi_seq_item);
            axi_seq_item.write   = 1'b0;  // read
            axi_seq_item.address = i;  // address increase by 1
            `uvm_info("SEQ", "Read Data send to driver", UVM_NONE);
            finish_item(axi_seq_item);
        end
    endtask


    virtual task body();
        axi_seq_item = seq_item::type_id::create("SEQ_ITEM");
        repeat (10) begin
            write_item();
            read_item();
        end
    endtask
endclass


class axi_driver extends uvm_driver #(seq_item);
    `uvm_component_utils(axi_driver)

    virtual axi_interface axi_mem_intf;
    seq_item axi_seq_item;

    function new(input string name = "axi_driver", uvm_component c);
        super.new(name, c);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        axi_seq_item = seq_item::type_id::create("SEQ_ITEM", this);
        if (!uvm_config_db#(virtual axi_interface)::get(
                this, "", "axi_mem_intf", axi_mem_intf
            )) begin
            `uvm_fatal(get_name(), "Unable to access to axi interface");
        end
    endfunction

    virtual function void start_of_simulation_phase(uvm_phase phase);
        $display("display start of simulation phase!");
    endfunction

    virtual task run_phase(uvm_phase phase);
        $display("display run phase!");
        forever begin
            seq_item_port.get_next_item(axi_seq_item);
            @(posedge axi_mem_intf.ACLK);
            if (axi_seq_item.write == 1'b1) begin  // for write transaction
                axi_mem_intf.ARVALID <= 1'b0;
                axi_mem_intf.RREADY  <= 1'b0;

                axi_mem_intf.AWADDR  <= axi_seq_item.address;
                axi_mem_intf.AWVALID <= 1'b1;

                axi_mem_intf.WDATA   <= axi_seq_item.wdata;
                axi_mem_intf.WVALID  <= 1'b1;
                axi_mem_intf.WSTRB   <= 4'b0001;

                axi_mem_intf.BREADY  <= 1'b1;
                @(posedge axi_mem_intf.BVALID); // slave mem의 response valid 신호 대기
            end
            else if(axi_seq_item.write == 1'b0) begin // for read transaction
                axi_mem_intf.AWVALID <= 1'b0;
                axi_mem_intf.WVALID  <= 1'b0;
                axi_mem_intf.BREADY  <= 1'b0;

                axi_mem_intf.ARADDR  <= axi_seq_item.address;
                axi_mem_intf.ARVALID <= 1'b1;

                axi_mem_intf.RREADY  <= 1'b1;
                @(posedge axi_mem_intf.RVALID); // slave mem가 read data 출력할때까지 대기
            end

            seq_item_port.item_done();
        end
    endtask
endclass


class axi_monitor extends uvm_monitor;
    `uvm_component_utils(axi_monitor);

    uvm_analysis_port #(seq_item) send;
    virtual axi_interface axi_mem_intf;
    seq_item axi_seq_item;

    function new(input string name = "axi_monitor", uvm_component c);
        super.new(name, c);
        send = new("WRITE", this);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        axi_seq_item = seq_item::type_id::create("SEQ_ITEM", this);
        if (!uvm_config_db#(virtual axi_interface)::get(
                this, "", "axi_mem_intf", axi_mem_intf
            )) begin
            `uvm_fatal(get_name(), "Unable to access axi interface");
        end
    endfunction


    virtual task run_phase(uvm_phase phase);
        forever begin
            @(posedge axi_mem_intf.ACLK);
            #2;
            if (axi_mem_intf.AWVALID == 1'b1) begin  // for write transaction
                axi_seq_item.write  = 1'b1;
                axi_seq_item.address= axi_mem_intf.AWADDR;
                axi_seq_item.wdata  = axi_mem_intf.WDATA[7:0];
                @(posedge axi_mem_intf.BVALID); // slave mem의 response valid 신호 대기
            end else begin
                axi_seq_item.write   = 1'b0;
                axi_seq_item.address = axi_mem_intf.ARADDR;
                axi_seq_item.wdata   = 0;
                @(posedge axi_mem_intf.RVALID); // slave mem가 read data 출력할때까지 대기
                axi_seq_item.rdata = axi_mem_intf.RDATA[7:0];
            end
        end
    endtask
endclass


class axi_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(axi_scoreboard);

    uvm_analysis_imp #(seq_item, axi_scoreboard) recv;

    logic [7:0] scb_mem[0:15];  // reference model memory

    function new(input string name = "axi_scoreboard", uvm_component c);
        super.new(name, c);
        recv = new("READ", this);
    endfunction

    virtual function void write(seq_item data);
        `uvm_info("SCB", "Data received from Monitor", UVM_NONE);
        data.print(uvm_default_line_printer);

        if (data.write == 1'b1) begin  // write transaction
            scb_mem[data.address] = data.wdata;
            `uvm_info("SCB", $sformatf("Data Write Memory[%d]: %0h",
                                       data.address, data.wdata), UVM_NONE);
        end else begin  // read transaction
            if (data.rdata == scb_mem[data.address]) begin
                `uvm_info("SCB", "PASS!", UVM_NONE);
            end else begin
                `uvm_error("SCB", "FAIL!");
            end
            `uvm_info("SCB", $sformatf("Read Data: %0h, scb_mem[%d]: %0h",
                                       data.rdata, data.address,
                                       scb_mem[data.address]), UVM_NONE);
        end

    endfunction
endclass



class axi_agent extends uvm_agent;
    `uvm_component_utils(axi_agent);

    function new(input string name = "axi_agent", uvm_component c);
        super.new(name, c);
    endfunction

    axi_monitor axiMonitor;
    axi_driver axiDriver;
    uvm_sequencer #(seq_item) axiSequencer;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        axiMonitor = axi_monitor::type_id::create("MON", this);
        axiDriver = axi_driver::type_id::create("DRV", this);
        axiSequencer = uvm_sequencer#(seq_item)::type_id::create("SQR", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        axiDriver.seq_item_port.connect(axiSequencer.seq_item_export);
    endfunction
endclass


class axi_env extends uvm_env;
    `uvm_component_utils(axi_env);

    function new(input string name = "axi_env", uvm_component c);
        super.new(name, c);
    endfunction

    axi_scoreboard axiScoreboard;
    axi_agent axiAgent;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        axiScoreboard = axi_scoreboard::type_id::create("SCB", this);
        axiAgent = axi_agent::type_id::create("AGENT", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        axiAgent.axiMonitor.send.connect(axiScoreboard.recv);
    endfunction
endclass



class axi_test extends uvm_test;
    `uvm_component_utils(axi_test);

    function new(input string name = "axi_test", uvm_component c);
        super.new(name, c);
    endfunction

    axi_sequence axiSequence;
    axi_env axiEnv;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        axiSequence = axi_sequence::type_id::create("SEQ", this);
        axiEnv      = axi_env::type_id::create("ENV", this);
    endfunction

    virtual task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        axiSequence.start(axiEnv.axiAgent.axiSequencer);
        phase.drop_objection(this);
    endtask

endclass


module tb_AXI_Slave ();

    logic ACLK;
    logic ARESETn;

    axi_interface axi_mem_intf (
        ACLK,
        ARESETn
    );


    always #5 ACLK = ~ACLK;

    initial begin
        ACLK = 1'b0;
        ARESETn = 1'b0;
        #10 ARESETn = 1'b1;
    end

    axi_test axiTest;

    AXI_Slave_Memory dut (
        // Global Signal
        .ACLK(axi_mem_intf.ACLK),
        .ARESETn(axi_mem_intf.ARESETn),

        .ARADDR (axi_mem_intf.ARADDR),
        .ARVALID(axi_mem_intf.ARVALID),
        .ARREADY(axi_mem_intf.ARREADY),

        .RDATA (axi_mem_intf.RDATA),
        .RVALID(axi_mem_intf.RVALID),
        .RREADY(axi_mem_intf.RREADY),


        .AWADDR (axi_mem_intf.AWADDR),
        .AWVALID(axi_mem_intf.AWVALID),
        .AWREADY(axi_mem_intf.AWREADY),

        .WDATA (axi_mem_intf.WDATA),
        .WVALID(axi_mem_intf.WVALID),
        .WSTRB (axi_mem_intf.WSTRB),
        .WREADY(axi_mem_intf.WREADY),

        .BRESP (axi_mem_intf.BRESP),
        .BVALID(axi_mem_intf.BVALID),
        .BREADY(axi_mem_intf.BREADY)
    );


    initial begin
        axiTest = new("AXI Slave UVM Verification", null);
        uvm_config_db#(virtual axi_interface)::set(null, "*", "axi_mem_intf",
                                                   axi_mem_intf);
        run_test();
    end
endmodule
