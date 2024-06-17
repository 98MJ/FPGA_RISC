`timescale 1ns / 1ps

module RV32I(
    input  logic        clk,
    input  logic        reset,
    input  logic        rx,
    input  logic [3:0]  inPortB,
    output logic [3:0]  outPortA,
    output logic [7:0]  fndFont,
    output logic [3:0]  fndCom,
    output logic        tx
    );
    logic [31:0] w_InstrMemData, w_InstrMemAddr, w_Addr, w_dataMemRD, w_WD, w_MRData;
    logic [31:0] w_fndRdata;
    logic w_We;
    logic [8:0]  w_slave_sel;
    logic [31:0] w_GpoRD, w_GpiRD;
    logic [7:0] w_RxData;

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
    .slave_rdata2(w_GpiRD),
    .slave_rdata3(w_GpoRD),
    .slave_rdata4(),
    .slave_rdata5(),
    .slave_rdata6(),
    .slave_rdata7(),
    .slave_rdata8(w_fndRdata), //fnd
    .slave_rdata9(w_RxData),
    .master_rdata(w_MRData),
    .slave_sel(w_slave_sel)
    );
GPO U_GPO(
    .clk(clk),
    .reset(reset),
    .ce(w_slave_sel[2]),
    .we(w_We),
    .addr(w_Addr[1:0]),
    .wdata(w_WD),
    .rdata(w_GpoRD),
    .outPort(outPortA)
    );
GPI U_GPIB(
    .clk(clk),
    .addr(w_Addr),
    .cs(w_slave_sel[1]),
    .we(w_We),
    .inPort(inPortB),
    .rdata(w_GpiRD)
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

fndController U_FND(
    .clk(clk),
    .reset(reset),
    .we(w_We),
    .cs(w_slave_sel[7]),
    .addr(w_Addr),
    .wdata(w_WD),
    .rdata(w_fndRdata),
    .fndFont(fndFont),
    .fndCom(fndCom)
    );
uart U_UART(
    .clk(clk),
    .reset(reset),
    .cs(w_slave_sel[8]),
    .we(w_WD),
    .addr(w_Addr),
    .start(start),
    //.  tx_data,
    .tx(tx),
    .rx(rx),
    .rx_data(w_RxData)
    );

endmodule
