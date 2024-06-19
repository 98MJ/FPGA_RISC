`timescale 1ns / 1ps

`include "uvm_macros.svh"
import uvm_pkg::*;

interface adder_interface;
    logic [31:0] a; 
    logic [31:0] b;
    logic [31:0] result; 
endinterface //adder_interface

class seq_item extends uvm_sequence_item;
    rand bit [31:0] a;
    rand bit [31:0] b;
    bit      [31:0] result;
    function new(input string name = "seq_item");
        super.new(name);        
    endfunction //new()

    `uvm_object_utils_begin(seq_item)
        `uvm_field_int(a, UVM_DEFAULT)
        `uvm_field_int(b, UVM_DEFAULT)
        `uvm_field_int(result, UVM_DEFAULT)
    `uvm_object_utils_end
endclass //seq_item extends uvm_sequence_item

class adder_sequence extends uvm_sequence; // generator         
    `uvm_object_utils(adder_sequence) // add uvm factory (my class)

    seq_item adder_seq_item; // handler

    function new(input string name = "adder_sequence");
        super.new(name);
    endfunction //new()

    virtual task body(); // virtual -> polymorphism
        adder_seq_item = seq_item::type_id::create("SEQ_ITEM"); // create instance
        repeat(1000) begin
            start_item(adder_seq_item);
            adder_seq_item.randomize();
            `uvm_info("SEQ", "Data send to Driver", UVM_NONE);
            finish_item(adder_seq_item);
        end
    endtask
endclass //adder_sequence extends uvm_sequence


class adder_driver extends uvm_driver #(seq_item);
    `uvm_component_utils(adder_driver) // add factory

    virtual adder_interface adderIntf;
    seq_item adder_seq_item;

    function new(input string name = "adder_driver", uvm_component c);
        super.new(name, c);
    endfunction //new()

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        adder_seq_item = seq_item::type_id::create("SEQ_ITEM", this);
        if(!uvm_config_db#(virtual adder_interface)::get(this,"", "adderIntf", adderIntf))begin
            `uvm_fatal(get_name(), "Unable to access adder interface");
        end
    endfunction

    virtual function void start_of_simulation_phase(uvm_phase phase);
        $display("display start of simulration phase");
    endfunction

    virtual task run_phase(uvm_phase phase);
        $display("display run phase!");
        forever begin
            #10;
            seq_item_port.get_next_item(adder_seq_item);
                adderIntf.a = adder_seq_item.a;
                adderIntf.b = adder_seq_item.b;
                `uvm_info("DRV", "Send data to DUT", UVM_NONE);
            seq_item_port.item_done();
        end
    endtask
endclass //adder_driver extends uvm_driver;

class adder_monitor extends uvm_monitor;
    `uvm_component_utils(adder_monitor)

    uvm_analysis_port #(seq_item) send;
    virtual adder_interface adderIntf;
    seq_item adder_seq_item;

    function new(input string name = "adder_monitor", uvm_component c);
        super.new(name, c);
        send = new("WRITE", this);       
    endfunction //new()

    virtual function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        adder_seq_item = seq_item::type_id::create("SEQ_ITEM", this);
        if(!uvm_config_db#(virtual adder_interface)::get(this,"", "adderIntf", adderIntf))begin
            `uvm_fatal(get_name(), "Unable to access adder interface");
        end
    endfunction

    virtual task run_phase(uvm_phase phase);
        forever begin
            #10;
            adder_seq_item.a = adderIntf.a;
            adder_seq_item.b = adderIntf.b;
            adder_seq_item.result = adderIntf.result;
            `uvm_info("MON", "send data to Scoreboard", UVM_NONE);
            send.write(adder_seq_item);
        end
    endtask
endclass //adder_monitor extends uvm_monitor

class adder_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(adder_scoreboard)

    uvm_analysis_imp #(seq_item, adder_scoreboard) recv;

    function new(input string name = "adder_scoreboard", uvm_component c);
        super.new(name, c);
        recv = new("READ", this);
    endfunction //new()
    
    virtual function void write(seq_item data);
        `uvm_info("SCB", "Data received from Monitor", UVM_NONE);
        if((data.a + data.b) == data.result) begin
            `uvm_info("SCB", $sformatf("Pass!, %d + %d = %d", data.a, data.b, data.result), UVM_NONE);
        end else begin
            `uvm_error("SCB", $sformatf("Fail!, %d + %d = %d", data.a, data.b, data.result));
        end
        data.print(uvm_default_line_printer);
    endfunction
endclass //adder_scoreboard extends uvm_scoreboard

class adder_agent extends uvm_agent;
    `uvm_component_utils(adder_agent)

    function new(input string name = "adder_agent", uvm_component c);
        super.new(name, c);
    endfunction //new()

    adder_monitor adderMonitor;
    adder_driver adderDriver;
    uvm_sequencer #(seq_item) adderSequencer;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        adderMonitor = adder_monitor::type_id::create("MON", this);
        adderDriver = adder_driver::type_id::create("DRV", this);
        adderSequencer = uvm_sequencer#(seq_item)::type_id::create("SQR", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        adderDriver.seq_item_port.connect(adderSequencer.seq_item_export);
    endfunction
endclass //adder_agent extends uvm_agent

class adder_env extends uvm_env;
    `uvm_component_utils(adder_env);

    function new(input string name = "adder_env", uvm_component c);
        super.new(name, c);        
    endfunction //new()
    
    adder_scoreboard adderScoreboard;
    adder_agent adderAgent;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        adderScoreboard = adder_scoreboard::type_id::create("SCB", this);
        adderAgent = adder_agent::type_id::create("AGENT",this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        adderAgent.adderMonitor.send.connect(adderScoreboard.recv);
    endfunction
endclass //adder_env extends uvm_env

class adder_test extends uvm_test;
    `uvm_component_utils(adder_test)

    function new(input string name = "adder_test", uvm_component c);
        super.new(name, c);
    endfunction //new()
    
    adder_sequence adderSequence;
    adder_env adderEnv;

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        adderSequence = adder_sequence::type_id::create("SEQ", this);
        adderEnv = adder_env::type_id::create("ENV", this);
    endfunction

    virtual task run_phase(uvm_phase phase);
        phase.raise_objection(this);
        adderSequence.start(adderEnv.adderAgent.adderSequencer);
        phase.drop_objection(this);
    endtask
endclass //adder_test extends uvm_test

module tb_adder(); 

    adder_interface adderInif();
    adder_test adderTest;

    adder dut(
        .a(adderInif.a),
        .b(adderInif.b),
        .result(adderInif.result)
    );
    
    initial begin
        adderTest = new("Adder UVM Verification", null);
        uvm_config_db #(virtual adder_interface)::set(null, "*", "adderInif", adderInif);
        run_test();
    end
    
endmodule
