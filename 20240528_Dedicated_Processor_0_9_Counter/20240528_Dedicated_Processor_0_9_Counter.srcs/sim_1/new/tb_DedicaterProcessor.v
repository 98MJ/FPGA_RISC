`timescale 1ns / 1ps

module tb_DedicaterProcessor();
    reg clk;
    reg reset;
    wire [7:0] out;

    DedicatedProcess dut(
        .clk(clk),
        .reset(reset),
        .out(out)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0; reset = 1'b1;
        #10;
        reset = 1'b0;
    end
endmodule
