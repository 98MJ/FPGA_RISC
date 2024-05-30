`timescale 1ns / 1ps

module dedicatedprocess(
    input clk,
    input reset,
    output [7:0] outPort
    );
    
    logic       LE10, RFSrcMuxSel, OutLoad, we;
    logic [1:0] raddr1, raddr2, waddr;

    controlunit U_ControlUnit(
        .*
    );
    datapath U_DataPath(
        .*
    );
endmodule
