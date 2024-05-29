`timescale 1ns/1ps

module dataPath (
    input clk,
    input reset,
    input AsrcMuxSel,
    input SumsrcMuxSel,
    input ALoad,
    input SumLoad,
    input OutBufSel,
    output ALt11,
    output [7:0] out
);
    wire [7:0] w_AdderResult, w_MuxOut, w_ARegOut, w_SumMuxOut, w_SumAdderResult, w_SumRegOut;

    MUX_2X1 U_A_MUX(
        .sel(AsrcMuxSel),
        .A(8'b0),
        .B(w_AdderResult),
        .y(w_MuxOut)
    );
    register U_A_reg(
        .clk(clk),
        .reset(reset),
        .load(ALoad),
        .d(w_MuxOut),
        .q(w_ARegOut)
    );
    comparator U_compare(
        .a(w_ARegOut),
        .b(10),
        .lt(ALt11)
    );

    adder U_A_adder(
        .a(w_ARegOut),
        .b(8'b1),
        .y(w_AdderResult)
    );
    
    MUX_2X1 U_sum_MUX(
        .sel(SumsrcMuxSel),
        .A(8'b0),
        .B(w_SumAdderResult),
        .y(w_SumMuxOut)
    );

    adder U_sum_adder(
        .a(w_AdderResult),
        .b(w_SumRegOut),
        .y(w_SumAdderResult)
    );

    register U_sum_reg(
        .clk(clk),
        .reset(reset),
        .load(SumLoad),
        .d(w_SumMuxOut),
        .q(w_SumRegOut)
    );
    
    register U_outreg(
        .clk(clk),
        .reset(reset),
        .load(OutBufSel),
        .d(w_SumAdderResult),
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