`timescale 1ns / 1ps

module Bus_Interconnector(
    input  logic [31:0] address,
    input  logic [31:0] slave_rdata1,
    input  logic [31:0] slave_rdata2,
    input  logic [31:0] slave_rdata3,
    input  logic [31:0] slave_rdata4,
    input  logic [31:0] slave_rdata5,
    input  logic [31:0] slave_rdata6,
    input  logic [31:0] slave_rdata7,
    input  logic [31:0] slave_rdata8,
    input  logic [31:0] slave_rdata9,
    output logic [31:0] master_rdata,
    output logic [8:0]  slave_sel
    );

    decoder U_Decoder(
        .x(address),
        .y(slave_sel)
    );
    mux U_Mux(
        .sel(address),
        .a(slave_rdata1),
        .b(slave_rdata2),
        .c(slave_rdata3),
        .d(slave_rdata4),
        .e(slave_rdata5),
        .f(slave_rdata6),
        .g(slave_rdata7),
        .h(slave_rdata8),
        .i(slave_rdata9),
        .y(master_rdata)
    );
endmodule

module decoder (
    input  logic [31:0] x,
    output logic [8:0]  y
);
    always_comb begin 
        case (x[31:8])
            24'h0000_10: y = 9'b000000001; 
            24'h0000_20: y = 9'b000000010; 
            24'h0000_21: y = 9'b000000100; 
            24'h0000_22: y = 9'b000001000; 
            24'h0000_23: y = 9'b000010000; 
            24'h0000_24: y = 9'b000100000; 
            24'h0000_25: y = 9'b001000000; 
            24'h0000_30: y = 9'b010000000; 
            24'h0000_40: y = 9'b100000000; 
            default: y = 9'b0; 
        endcase
    end
endmodule

module mux (
    input  logic [31:0] sel,
    input  logic [31:0] a,
    input  logic [31:0] b,
    input  logic [31:0] c,
    input  logic [31:0] d,
    input  logic [31:0] e,
    input  logic [31:0] f,
    input  logic [31:0] g,
    input  logic [31:0] h,
    input  logic [31:0] i,
    output logic [31:0] y
);
    always_comb begin 
        case (sel[31:8])
            24'h0000_10: y = a; 
            24'h0000_20: y = b; 
            24'h0000_21: y = c; 
            24'h0000_22: y = d; 
            24'h0000_23: y = e; 
            24'h0000_24: y = f; 
            24'h0000_25: y = g; 
            24'h0000_30: y = h; 
            24'h0000_40: y = i; 
            default: y = 32'bx; 
        endcase
    end

    
endmodule