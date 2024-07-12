`timescale 1ns / 1ps

module ALU(
    input  logic [31:0] a,
    input  logic [31:0] b,
    input  logic        op,
    output logic [31:0] result
    );
    
    always_comb begin : blockName    
        if(op) result = a + b;
        else result = a - b;
    end

endmodule