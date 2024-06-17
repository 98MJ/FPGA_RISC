`timescale 1ns / 1ps

module tb_RV32I( );
    reg clk;
    reg reset;
    wire [3:0] OutPortA;
    wire [3:0] OutPortB;
    wire [3:0] OutPortC;
    wire [3:0] OutPortD;
    
    RV32I_MCU dut(
    .clk(clk),
    .reset(reset),
    .OutPortA(OutPortA),
    .OutPortB(OutPortB),
    .OutPortC(OutPortC),
    .OutPortD(OutPortD)
    );

    always #5 clk = ~clk;
    
    initial begin
        #00 clk = 0; reset = 1;
        #20 reset = 0;
    end

endmodule
