`timescale 1ns / 1ps

module RV32I(
    input  logic clk,
    input  logic reset
    );
    logic [31:0] w_InstrMemData, w_InstrMemAddr, w_dataMemAddr, w_dataMemRD;
    logic w_dataMemWe;

CPU_Core U_CPU_Core(
    .clk(clk),
    .reset(reset),
    .machineCode(w_InstrMemData),
    .instrMemRAddr(w_InstrMemAddr),
    .dataMemWe(w_dataMemWe),
    .dataMemRAddr(w_dataMemAddr),
    .dataMemRD(w_dataMemRD)
    );

instructionMemory U_ROM (
    .addr(w_InstrMemAddr),
    .data(w_InstrMemData)
);

DataMemory U_RAM(
    .clk(clk),
    .we(w_dataMemWe),
    .addr(w_dataMemAddr),
    .wdata(),
    .rdata(w_dataMemRD)
);

endmodule
