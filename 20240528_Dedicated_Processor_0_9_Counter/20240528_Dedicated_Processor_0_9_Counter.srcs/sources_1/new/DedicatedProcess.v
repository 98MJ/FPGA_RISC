`timescale 1ns / 1ps

module DedicatedProcess_FND (
    input clk,
    input reset,
    output [7:0] fndFont,
    output [3:0] fndCom
);
    wire [7:0] w_data;

    DedicatedProcess U_DedicP(
        .clk(clk),
        .reset(reset),
        .out(w_data)
    );
    fndController U_FND(
        .clk(clk),
        .reset(reset),
        .digit(w_data),
        .fndFont(fndFont),
        .fndCom(fndCom)
    );
    
endmodule

module DedicatedProcess(
    input clk,
    input reset,
    output [7:0] out
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
    .clk(r_clk),
    .reset(reset),
    .AsrcMuxSel(w_ASrcMuxsel),
    .ALoad(w_ALoad),
    .ALT10(w_Alt10),
    .OutBufSel(w_outbufsel),
    .out(out)
    );
    controlunit U_CU(
    .clk(r_clk),
    .reset(reset),
    .AsrcMuxSel(w_ASrcMuxsel),
    .ALoad(w_ALoad),
    .ALT10(w_Alt10),
    .OutBufSel(w_outbufsel)
    );


endmodule
