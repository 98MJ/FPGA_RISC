`timescale 1ns / 1ps

module dataPath (
    input clk,
    input reset,
    input AsrcMuxSel,
    input ALoad,
    input OutBufSel,
    output ALT10,
    output [7:0] out
);
    wire [7:0] w_AdderResult, w_MuxOut, w_ARegOut;

    MUX_2X1 U_MUX(
        .sel(AsrcMuxSel),
        .A(8'b0),
        .B(w_AdderResult),
        .y(w_MuxOut)
    );

    register U_reg(
        .clk(clk),
        .reset(reset),
        .load(ALoad),
        .d(w_MuxOut),
        .q(w_ARegOut)
    );

    comparator U_compare(
        .a(w_ARegOut),
        .b(10),
        .lt(ALT10)
    );

    adder U_adder(
        .a(w_ARegOut),
        .b(8'b1),
        .y(w_AdderResult)
    );
/*
    outbuf U_out(
        .en(OutBufSel),
        .a(w_ARegOut),
        .y(out)
    );*/

    register U_outreg(
        .clk(clk),
        .reset(reset),
        .load(OutBufSel),
        .d(w_ARegOut),
        .q(out)
    );

endmodule

module MUX_2X1 (
    input      [7:0] A,
    input      [7:0] B,
    input            sel,
    output reg [7:0] y
);

    always @(*) begin
        case (sel)
            1'b0: y = A;
            1'b1: y = B;
        endcase
    end
endmodule

module register (
    input        clk,
    input        reset,
    input        load,
    input  [7:0] d,
    output [7:0] q
);

    reg [7:0] d_reg, d_next;

    assign q = d_reg;

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            d_reg <= 0;
        end else begin
            d_reg <= d_next;
        end
    end

    always @(*) begin
        if (load) d_next = d;
        else d_next = d_reg;
    end
endmodule


module comparator (
    input [7:0] a,
    input [7:0] b,
    output lt
);

    assign lt = a < b;

endmodule

module adder (
    input  [7:0] a,
    input  [7:0] b,
    output [7:0] y
);
    assign y = a + b;

endmodule

module outbuf (
    input        en,
    input  [7:0] a,
    output [7:0] y
);
    assign y = en ? a: 8'bz;

endmodule