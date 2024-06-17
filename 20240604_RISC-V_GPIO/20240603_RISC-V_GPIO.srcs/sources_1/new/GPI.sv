`timescale 1ns / 1ps

module GPI(
    input  reg          clk,
    input  reg          addr,
    input  reg          cs,
    input  reg          we,
    input  reg [3:0]    inPort,
    output reg [31:0]   rdata
    );

    reg [31:0] IDR;
    
    assign rdata = IDR;
    
    always_comb begin 
        if(cs & ~we) IDR[3:0] = inPort;
    end 
endmodule