`timescale 1ns / 1ps

module datapath(
    input clk, 
    input reset,
    input ISrcMuxSel,
    input SumSrcMuxSel,
    input AdderSrcMuxSel,
    input ILoad,
    input SumLoad, 
    input OutLoad,
    output ILe10,
    output [7:0] outPort
);
    logic [7:0] w_AdderResut, w_SumSrcMuxOut, w_ISrcMuxOut, w_AdderSrcMuxOut;
    logic [7:0] w_SumRegOut, w_IRegOut;

mux_2x1 U_Mux_SumSrcMux(
    .sel(SumSrcMuxSel),
    .a(8'b0),
    .b(w_AdderResut),
    .y(w_SumSrcMuxOut)
);  
mux_2x1 U_Mux_ISrcMux(
    .sel(ISrcMuxSel),
    .a(8'b0),
    .b(w_AdderResut),
    .y(w_ISrcMuxOut) // logic = both wire and reg
); 
register U_SumReg (
    .clk(clk),
    .reset(reset),
    .load(SumLoad),
    .d(w_SumSrcMuxOut),
    .q(w_SumRegOut)
);
register U_IReg (
    .clk(clk),
    .reset(reset),
    .load(ILoad),
    .d(w_ISrcMuxOut),
    .q(w_IRegOut)
);
mux_2x1 U_Mux_AdderSrcMux(
    .sel(AdderSrcMuxSel),
    .a(w_SumRegOut),
    .b(8'd1),
    .y(w_AdderSrcMuxOut)
);  

comparator U_Comp_ILe10(
    .a(w_IRegOut),
    .b(8'd10),
    .le(ILe10)
);
    
adder U_adder (
    .a(w_AdderSrcMuxOut),
    .b(w_IRegOut),
    .y(w_AdderResut)
);  
register U_OutReg (
    .clk(clk),
    .reset(reset),
    .load(OutLoad),
    .d(w_SumRegOut),
    .q(outPort)
);
    
endmodule

module mux_2x1 (
    input                 sel,
    input           [7:0] a,
    input           [7:0] b,
    output logic    [7:0] y // logic = both wire and reg
);  
    always_comb begin : mux_2x1
        case (sel)
            1'b0: y = a;
            1'b1: y = b;
        endcase
    end    
endmodule

module register (
    input                 clk,
    input                 reset,
    input                 load,
    input           [7:0] d,
    output logic    [7:0] q
);
    always_ff @( posedge clk, posedge reset ) begin : register
        if (reset) begin
            q <= 0;
        end
        else begin
            if(load) q <= d;
        end
    end : register
endmodule

module comparator (
    input [7:0] a,
    input [7:0] b,
    output      le
);
    assign le = (a <= b);
endmodule

module adder (
    input [7:0]     a,
    input [7:0]     b,
    output [7:0]    y
);  
    assign y = a + b;
endmodule