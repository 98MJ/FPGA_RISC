`timescale 1ns / 1ps

interface AXI_interface;
    logic        ACLK;
    logic        ARESETn;
    logic [31:0] aw_addr;
    logic [31:0] w_data;
    logic        valid;
    logic        ready;
    logic [3:0]  strb;
    logic [31:0] ar_addr;
    logic [31:0] r_data;
    logic        rvalid;
    logic        rready;
endinterface

class transaction;

    rand bit valid;
    rand bit rvalid;
    rand bit [31:0] aw_addr;
    rand bit [31:0] ar_addr;
    rand bit [3:0]  strb;
    rand bit [31:0] w_data;
    bit      [31:0] r_data;
    
    constraint c_valid {valid != rvalid;}
    constraint c_waddr {aw_addr < 16;}
    constraint c_raddr {ar_addr < 16;}

    task display(string name);
        $display("[%s] aw_addr : %x, strb : %x, w_data : %x, ar_addr : %x, r_data : %x",
                    name, aw_addr, strb, w_data, ar_addr, r_data);        
    endtask //

endclass //transaction

class generator;
    transaction trans;
    mailbox #(transaction) gen2drv_mbox;
    event gen_next_event;
    function new(mailbox #(transaction) gen2drv_mbox, event gen_next_event);
        this.gen2drv_mbox = gen2drv_mbox;
        this.gen_next_event = gen_next_event;
    endfunction //new()
    
    task run(int count);
        repeat(count) begin
            trans = new();
            assert(trans.randomize())
            else $error("[GEN] trans.randomize() error!");
            gen2drv_mbox.put(trans);
            trans.display("GEN");
            @(gen_next_event);
        end
    endtask 
endclass //generator

class driver;
    transaction trans;
    mailbox #(transaction) gen2drv_mbox;
    virtual AXI_interface axi_inif;
    event drv_next_event;

    function new(virtual AXI_interface axi_inif, mailbox #(transaction) gen2drv_mbox);
        this.axi_inif = axi_inif;
        this.gen2drv_mbox = gen2drv_mbox;
    endfunction //new()

    task reset();
        axi_inif.ARESETn <= 1'b0;
        axi_inif.valid <= 1'b0;
        axi_inif.rvalid <= 1'b0;
        axi_inif.aw_addr <= 0;
        axi_inif.ar_addr <= 0;
        axi_inif.strb <= 3'b0;
        axi_inif.w_data <= 0;
        repeat(5) @(posedge axi_inif.ACLK);
        axi_inif.ARESETn <= 1'b1;
    endtask

    task run();
        forever begin
            gen2drv_mbox.get(trans);
            axi_inif.valid <= trans.valid;
            axi_inif.rvalid <= trans.rvalid;
            axi_inif.aw_addr <= trans.aw_addr;
            axi_inif.ar_addr <= trans.ar_addr;
            axi_inif.strb <= trans.strb;
            axi_inif.w_data <= trans.w_data;
            trans.display("DRV");
            @(posedge axi_inif.ACLK);
        end
    endtask 
endclass

class monitor;
    virtual AXI_interface axi_inif;
    mailbox #(transaction) mon2scb_mbox;
    transaction trans;
    event drv_next_event;

    function new(virtual AXI_interface axi_inif, mailbox #(transaction) mon2scb_mbox);
        this.axi_inif = axi_inif;
        this.mon2scb_mbox = mon2scb_mbox;        
    endfunction //new()

    task run();
        forever begin
            trans = new();
            @(posedge axi_inif.ACLK);
            trans.valid      = axi_inif.valid;
            trans.rvalid     = axi_inif.rvalid; 
            trans.aw_addr    = axi_inif.aw_addr;
            trans.ar_addr    = axi_inif.ar_addr;
            trans.strb       = axi_inif.strb;
            trans.w_data     = axi_inif.w_data;
            trans.r_data     = axi_inif.r_data;
            mon2scb_mbox.put(trans);
            trans.display("MON");
        end
    endtask 
endclass //monitor

class scoreboard;
    mailbox #(transaction) mon2scb_mbox;
    transaction trans;
    event gen_next_event;
    int total_cnt, read_cnt, fail_cnt, write_cnt;
    logic [7:0] mem [0:15];
    
    function new(mailbox #(transaction) mon2scb_mbox, event gen_next_event);
        this.mon2scb_mbox = mon2scb_mbox;
        this.gen_next_event = gen_next_event;
        total_cnt = 0;
        read_cnt = 0;
        fail_cnt = 0;  
        write_cnt = 0;     
        for (int i=0; i<16; i++)begin
            mem[i] = 100+i;
        end
    endfunction
    
    task run();
        forever begin
            mon2scb_mbox.get(trans);
            trans.display("SCB");
            if(trans.valid) begin //write
                if(mem[trans.aw_addr] == trans.w_data)begin
                    $display("--> Write Pass! %x == %x", mem[trans.aw_addr], trans.w_data);
                    write_cnt++;
                end else begin
                    $display("--> Write FAIL! %x == %x", mem[trans.aw_addr], trans.w_data);
                    fail_cnt++;
                end
            end
            if(trans.rvalid) begin //write
                if(mem[trans.ar_addr] == trans.r_data)begin
                    $display("--> Read Pass! %x == %x", mem[trans.ar_addr], trans.r_data);
                    read_cnt++;
                end else begin
                    $display("--> Read FAIL! %x == %x", mem[trans.ar_addr], trans.r_data);
                    fail_cnt++;
                end
            end
            total_cnt++;
            ->gen_next_event;
        end
    endtask 
endclass

class environment;
    generator gen;
    driver drv;
    monitor mon;
    scoreboard scb;
    event gen_next_event;
    event drv_next_event;
    mailbox #(transaction) gen2drv_mbox;
    mailbox #(transaction) mon2scb_mbox;
    
    function new(virtual AXI_interface axi_inif);
        gen2drv_mbox = new();
        mon2scb_mbox = new();
        gen = new(gen2drv_mbox, gen_next_event);
        drv = new(axi_inif, gen2drv_mbox);
        mon = new(axi_inif, mon2scb_mbox);
        scb = new(mon2scb_mbox, gen_next_event);
    endfunction    

    task report();
        $display("===========================");
        $display("Final Report");
        $display("===========================");
        $display("Total Test :  %d", scb.total_cnt);
        $display("Read Count :  %d", scb.read_cnt);
        $display("Write Count : %d", scb.write_cnt);
        $display("Fail Count :  %d", scb.fail_cnt);
        $display("===========================");
        $display("test bench finished!");
        $display("===========================");
    endtask

    task pre_run();
        drv.reset();
    endtask

    task run();
        fork
            gen.run(100);
            drv.run();
            mon.run();
            scb.run();
        join_any
        report();
        #10 $finish;
    endtask

    task test();
        pre_run();
        run();
    endtask
    
endclass //environment

module tb_AXI();
    environment env;
    AXI_interface axi_inif();

    AXI_Memory dut(
        .ACLK(axi_inif.ACLK),
        .ARESETn(axi_inif.ARESETn),
        .aw_addr(axi_inif.aw_addr),
        .w_data(axi_inif.w_data),
        .valid(axi_inif.valid),
        .strb(axi_inif.strb),
        .ready(axi_inif.ready),
        .ar_addr(axi_inif.ar_addr),
        .r_data(axi_inif.r_data),
        .rvalid(axi_inif.rvalid),
        .rready(axi_inif.rready)
    );

    always #5 axi_inif.ACLK = ~axi_inif.ACLK;
    
    initial begin
        axi_inif.ACLK = 0;
    end

    initial begin
        env = new(axi_inif);
        env.test;
    end
    
endmodule
