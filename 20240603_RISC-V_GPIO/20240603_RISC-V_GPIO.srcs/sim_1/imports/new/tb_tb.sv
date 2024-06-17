`timescale 1ns / 1ps

module tb_tb();

    logic clk;
    logic reset;
    logic [3:0] outPortA;
    logic [3:0] inPortC;
    logic [3:0] IOPortD;

    RV32I dut(.*);

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        #50 reset = 0;
    end
endmodule
