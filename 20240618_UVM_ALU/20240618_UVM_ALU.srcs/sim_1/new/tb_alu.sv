`timescale 1ns / 1ps

`include "uvm_macros.svh"
import uvm_pkg::*;

interface alu_interface;
    logic [31:0] a;
    logic [31:0] b;
    logic        op;
    logic [31:0] result;
endinterface //alu_interface

class seq_item extends uvm_sequence_item;
    rand bit [31:0] a;
    rand bit [31:0] b;
    rand bit        op;
    bit [31:0] result;

    function new(input string name = "seq_item");
        super.new(name);        
    endfunction //new()

    `uvm_object_utils_begin(seq_item)
        `uvm_field_int(a, UVM_DEFAULT)
        `uvm_field_int(b, UVM_DEFAULT)
        `uvm_field_int(op, UVM_DEFAULT)
        `uvm_field_int(result, UVM_DEFAULT)
    `uvm_object_utils_end
endclass //seq_item extends uvm_sequence_item

class alu_sequence extends uvm_sequence;
    `uvm_object_utils(alu_sequence)

    seq_item alu_seq_item;

    function new(input string name = "alu_sequence");
        super.new(name);
    endfunction //new()
    
    virtual task body();
        alu_seq_item = seq_item::type_id::create("SEQ_ITEM");
        repeat(1000) begin
            start_item(alu_seq_item);
            alu_seq_item.randomize();
            `uvm_info("SEQ", "Data send to Driver", UVM_NONE);
            finish_item(alu_seq_item);
        end
    endtask
endclass //alu_sequence extends uvm_sequence

class alu_driver extends uvm_driver;
    `uvm_component_utils(alu_driver)

    virtual alu_interface aluIntf;
    seq_item alu_seq_item;

    function new(input string name = "alu_driver", uvm_component c);
        super.new(name, c);
    endfunction //new()
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        alu_seq_item = seq_item::type_id::create("SEQ_ITEM", this);
        if(!uvm_config_db#(virtual alu_interface)::get(this, "", "aluIntf", aluIntf)) begin
            `uvm_fatal(get_name(), "Unable to access addr interface");
        end
    endfunction

    virtual function void start_of_simulation_phase(uvm_phase phase);
        $display("display start of simulation phase!");
    endfunction

    virtual task run_phase(uvm_phase phase);
        $display("display run phase!");
        forever begin
            #10;
            seq_item_port.get_next_item(alu_seq_item);
            aluIntf.a = alu_seq_item.a;
            aluIntf.b = alu_seq_item.b;
            aluIntf.op = alu_seq_item.op;
            `uvm_info("DRV", "Send data to DUT", UVM_NONE);
            seq_item_port.item_done();
        end
    endtask
endclass //alu_driver extends uvm_driver

class alu_monitor extends uvm_monitor;
    `uvm_component_utils(alu_monitor)

    uvm_analysis_port #(seq_item) send;
    virtual alu_interface aluIntf;
    seq_item alu_seq_item;

    function new(input string name = "alu_monitor", uvm_component c);
        super.new(name, c);
        send = new("WRITE", this);        
    endfunction //new()

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        alu_seq_item.a = aluIntf.a;
        alu_seq_item.b = aluIntf.b;
        alu_seq_item.op = aluIntf.op;
        alu_seq_item.result = aluIntf.result;
    endfunction
endclass //alu_monitor extends uvm_monitor

module tb_alu();
    logic [31:0] a;
    logic [31:0] b;
    logic        op;
    logic [31:0] result;
    
    ALU dut(
       .a(a),
       .b(b),
       .op(op),
       .result(result)
    );

    initial begin
        a = 0; b = 0; op = 0;
        #10 op = 1; a = 30; b = 20;
        #10 op = 0;
    end
endmodule
