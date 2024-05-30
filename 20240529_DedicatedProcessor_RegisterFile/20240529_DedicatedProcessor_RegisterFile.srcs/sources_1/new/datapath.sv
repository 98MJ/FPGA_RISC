`timescale 1ns / 1ps

module datapath(
    input clk,
    input reset,
    input RFSrcMuxSel,
    input [1:0] raddr1,
    input [1:0] raddr2,
    input [1:0] waddr,
    input OutLoad,
    input we,
    output LE10,
    output [7:0] outPort
    );

    logic [7:0] w_rdata1, w_rdata2, w_AdderResut, w_RFSrcMuxOut;

    RegisterFile U_RFSrc(
        .clk(clk),
        .we(we),
        .raddr1(raddr1),
        .raddr2(raddr2),
        .waddr(waddr),
        .wdata(w_RFSrcMuxOut),
        .rdata1(w_rdata1),
        .rdata2(w_rdata2)
    );
    mux_2x1 U_RFSrcMux(
        .sel(RFSrcMuxSel),
        .a(w_AdderResut),
        .b(8'b1),
        .y(w_RFSrcMuxOut)// logic = both wire and reg
    );  

    adder U_adder (
        .a(w_rdata1),
        .b(w_rdata2),
        .y(w_AdderResut)
    );  
    comparator U_com(
        .a(w_rdata1),
        .b(8'd10),
        .le(LE10)
    );

    register U_OutReg(
        .clk(clk),
        .reset(reset),
        .load(OutLoad),
        .d(w_AdderResut),
        .q(outPort)
    );
    
endmodule

module RegisterFile (
    input        clk,
    input        we,
    input  [1:0] raddr1,
    input  [1:0] raddr2,
    input  [1:0] waddr,
    input  [7:0] wdata,
    output [7:0] rdata1,
    output [7:0] rdata2
);
    logic [7:0] regFile[0:3];

    always_ff @( posedge clk ) begin : blockName
        if (we) begin
            regFile[waddr] <= wdata;
        end
    end

    assign rdata1 = (raddr1 != 0) ? regFile[raddr1] : 0;
    assign rdata2 = (raddr2 != 0) ? regFile[raddr2] : 0;

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

module comparator (
    input [7:0] a,
    input [7:0] b,
    output      le
);
    assign le = (a <= b);
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

module adder (
    input [7:0]     a,
    input [7:0]     b,
    output [7:0]    y
);  
    assign y = a + b;
endmodule