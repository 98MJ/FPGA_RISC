`timescale 1ns / 1ps

module GPI(
    input           clk,
    input           addr,
    input           cs, 
    input           we,
    output [31:0]   rdata,
    input  [3:0]    inPort
    );

    reg [31:0] IDR;
    assign rdata = IDR;

    always @(*) begin
        if(cs & ~we) IDR[3:0] = inPort;
    end
endmodule
