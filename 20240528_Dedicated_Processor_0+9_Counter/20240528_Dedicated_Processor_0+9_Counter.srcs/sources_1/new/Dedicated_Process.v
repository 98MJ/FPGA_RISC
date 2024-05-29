`timescale 1ns / 1ps

module Dedicated_Process(
    input clk,
    input reset,
    output [7:0] out,
    output [7:0] fndFont,
    output [3:0] fndCom
    );

    reg r_clk;
    reg [31:0] counter;

    always @(posedge clk, posedge reset) begin
        if(reset) begin
            counter <= 0;
        end else begin
            if (counter == 100_000_000 -1) begin
                counter <= 0;
                r_clk <= 1'b1;
            end else begin
                counter <= counter + 1;
                r_clk <= 1'b0;
            end
        end
    end
    
    dataPath U_DP(
        .clk(clk),
        .reset(reset),
        .AsrcMuxSel(w_ASrcMuxsel),
        .SumsrcMuxSel(w_sumSrcMuxSel),
        .ALoad(w_ALoad),
        .SumLoad(w_SumLoad),
        .ALt11(w_Alt11),
        .OutBufSel(w_outbufsel),
        .out(out)
    );
    controlunit U_CU(
        .clk(clk),
        .reset(reset),
        .AsrcMuxSel(w_ASrcMuxsel),
        .SumsrcMuxSel(w_sumSrcMuxSel),
        .ALoad(w_ALoad),
        .SumLoad(w_SumLoad),
        .ALt11(w_Alt11),
        .OutBufSel(w_outbufsel)
    );  

    fndController U_FND(
        .clk(clk),
        .reset(reset),
        .digit(out),
        .fndFont(fndFont),
        .fndCom(fndCom)
    );
endmodule
