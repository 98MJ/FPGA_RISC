`timescale 1ns / 1ps

module tb_tb();
    logic clk;
    logic reset;
    logic [3:0] IOPortC;
    logic btnOn;

    RV32I_MCU dut(
        .clk(clk),
        .reset(reset),
        .btnOn(btnOn)
        //.IOPortC(IOPortC)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        btnOn = 1'b0;
        #50 reset = 0;
        btnOn = 1'b1;
        #400 btnOn = 1'b0;
        #400 btnOn = 1'b1;
        #400 btnOn = 1'b0;
    end
endmodule
