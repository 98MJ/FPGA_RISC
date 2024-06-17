`timescale 1ns / 1ps

module RV32I (
    input  logic       clk,
    input  logic       reset,
    output logic [3:0] outPortA
);
    logic [31:0] w_InstrMemAddr, w_InstrMemData;
    logic w_We;
    logic [31:0] w_Addr, w_dataMemRData, w_WData;
    logic [31:0] w_MasterRData, w_GpoRData;
    logic [2:0] w_slave_sel;

    CPU_Core U_CPU_Core (
        .clk(clk),
        .reset(reset),
        .machineCode(w_InstrMemData),
        .instrMemRAddr(w_InstrMemAddr),
        .dataMemRAddr(w_Addr),
        .dataMemRData(w_MasterRData),
        .dataMemWe(w_We),
        .dataMemWData(w_WData)
    );
    BUS_Interconnector U_BUS_Interconn (
        .address(w_Addr),
        .slave_sel(w_slave_sel),
        .slave_rdata1(w_dataMemRData),
        .slave_rdata2(w_GpoRData),
        .slave_rdata3(),
        .master_rdata(w_MasterRData)
    );
    GPO U_GPO (
        .clk(clk),
        .reset(reset),
        .ce(w_slave_sel[1]),
        .we(w_We),
        .addr(w_Addr[1:0]),
        .wdata(w_WData),
        .rdata(w_GpoRData),
        .outPort(outPortA)
    );
    DataMemory U_RAM (
        .clk(clk),
        .ce(w_slave_sel[0]),
        .we(w_We),
        .addr(w_Addr[7:0]),
        .wdata(w_WData),
        .rdata(w_dataMemRData)
    );
    InstructionMemory U_ROM (
        .addr(w_InstrMemAddr),
        .data(w_InstrMemData)
    );

endmodule
