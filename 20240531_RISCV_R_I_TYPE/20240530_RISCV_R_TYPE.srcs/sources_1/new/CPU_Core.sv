`timescale 1ns / 1ps

module CPU_Core(
    input clk,
    input reset,
    input  logic [31:0] machineCode,
    output logic [31:0] instrMemRAddr,
    output logic dataMemWe,
    output logic [31:0] dataMemRAddr,
    output logic [31:0] dataMemWD,
    input  logic [31:0] dataMemRD
    );

    logic w_regFilewe, ALUSrcMuxSel, RFWDSrcMuxSel, w_branch;
    logic [3:0] w_aluControl;
    logic [2:0] w_extType;

ControlUnit U_CU(
    .op(machineCode[6:0]), //tpye select
    .func3(machineCode[14:12]),
    .func7(machineCode[31:25]),
    .regFilewe(w_regFilewe),
    .ALUSrcMuxSel(w_AluSrcMuxSel),
    .RFWDSrcMuxSel(w_RFWDSrcMuxSel),
    .dataMemWe(dataMemWe),
    .extType(w_extType),
    .aluControl(w_aluControl),
    .branch(w_branch)
);
DataPath U_DP(
    .clk(clk),
    .reset(reset),
    .machineCode(machineCode),
    .regFilewe(w_regFilewe),
    .extType(w_extType),
    .aluControl(w_aluControl),
    .instrMemRAddr(instrMemRAddr),
    .ALUSrcMuxSel(w_AluSrcMuxSel),
    .RFWDSrcMuxSel(w_RFWDSrcMuxSel),
    .dataMemRAddr(dataMemRAddr),
    .dataMemWD(dataMemWD),
    .dataMemRD(dataMemRD),
    .branch(w_branch)
    );

endmodule