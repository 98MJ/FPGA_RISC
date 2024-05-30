`timescale 1ns / 1ps

module DedicatedProcessor(
    input clk,
    input reset,
    output [7:0] outPort
);
    //sig_interface sig_inif;
    logic ILe10, ISrcMuxSel, SumSrcMuxSel, ILoad, SumLoad, AdderSrcMuxSel, OutLoad;
    //assign outPort = sig_inif.dp.outPort;
    
controlunit U_ControlUnit(
    .*
    //.cu_inif(sig_inif.cu)
    );
    
datapath U_DataPath( 
   .*
   //.dp_inif(sig_inif.dp)
);
endmodule


interface sig_interface;
    logic ILe10;
    logic ISrcMuxSel;
    logic SumSrcMuxSel;
    logic ILoad;
    logic SumLoad;
    logic AdderSrcMuxSel;
    logic OutLoad;
    logic [7:0] outPort;
    
    modport dp (
        output ILe10,
        input ISrcMuxSel,
        input SumSrcMuxSel,
        input ILoad,
        input SumLoad,
        input AdderSrcMuxSel,
        input OutLoad,
        output outPort
    );
    modport cu (
        input ILe10,
        output ISrcMuxSel,
        output SumSrcMuxSel,
        output ILoad,
        output SumLoad,
        output AdderSrcMuxSel,
        output OutLoad
    );


endinterface //controlSignal_interface