`timescale 1ns / 1ps

module tb_tbtb();

    logic clk;
    logic reset;
    logic [3:0] outPortA;
    logic [7:0] fndFont;
    logic [3:0] fndCom;

    
    RV32I dut(
    .clk(clk),
    .reset(reset),
    .outPortA(outPortA),
    .fndFont(fndFont),
    .fndCom(fndCom)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        #50 reset = 0;
    end
endmodule
