`timescale 1ns / 1ps

module GPO(
    input  logic        clk,
    input  logic        reset,
    input  logic        ce,
    input  logic        we,
    input  logic [1:0]  addr,
    input  logic [31:0] wdata,
    output logic [31:0] rdata,
    output logic [3:0]  outPort
    );
    
    logic [31:0] ODR;

    assign outPort = ODR[3:0];

    always_ff @( posedge clk, posedge reset ) begin
        if (reset) begin
            ODR <= 0;
        end else begin
            if (ce & we) ODR <= wdata;
        end
    end

    assign rdata = ODR;
endmodule
