`timescale 1ns / 1ps

module RV32I(
    input  logic        clk,
    input  logic        reset,
    input  logic [3:0]  inPortC,
    inout  logic [3:0]  IOPortD,
    output logic [3:0]  outPortA
    );
    logic [31:0] w_InstrMemData, w_InstrMemAddr, w_Addr, w_dataMemRD, w_WD, w_MRData;
    logic w_We;
    logic [4:0]  w_slave_sel;
    logic [31:0] w_GpoRD, w_GpiRD, w_rDataGpioD;

CPU_Core U_CPU_Core(
    .clk(clk),
    .reset(reset),
    .machineCode(w_InstrMemData),
    .instrMemRAddr(w_InstrMemAddr),
    .dataMemWe(w_We),
    .dataMemRAddr(w_Addr),
    .dataMemRD(w_MRData),
    .dataMemWD(w_WD)
    );
Bus_Interconnector U_Bus_InterConn(
    .address(w_Addr),
    .slave_rdata1(w_dataMemRD),
    .slave_rdata2(w_GpoRD),
    .slave_rdata3(),
    .slave_rdata4(w_GpiRD),
    .slave_rdata5(w_rDataGpioD),
    .master_rdata(w_MRData),
    .slave_sel(w_slave_sel)
    );
GPO U_GPOA(
    .clk(clk),
    .reset(reset),
    .ce(w_slave_sel[1]),
    .we(w_We),
    .addr(w_Addr[1:0]),
    .wdata(w_WD),
    .rdata(w_GpoRD),
    .outPort(outPortA)
    );
GPI U_GPIC(
    .clk(clk),
    .addr(w_Addr),
    .cs(w_slave_sel[3]),
    .we(w_We),
    .inPort(inPortC),
    .rdata(w_GpiRD)
    );

GPIO U_GPIOD(
    .clk(clk),
    .reset(reset),
    .cs(w_slave_sel[4]),
    .we(w_We),
    .addr(w_Addr[3:0]),
    .wdata(w_WD),
    .rdata(w_rDataGpioD),
    .IOPort(IOPortD)
    );
    

instructionMemory U_ROM (
    .addr(w_InstrMemAddr),
    .data(w_InstrMemData)
);

DataMemory U_RAM(
    .clk(clk),
    .ce(w_slave_sel[0]),
    .we(w_We),
    .addr(w_Addr[7:0]),
    .wdata(w_WD),
    .rdata(w_dataMemRD)
);

endmodule
