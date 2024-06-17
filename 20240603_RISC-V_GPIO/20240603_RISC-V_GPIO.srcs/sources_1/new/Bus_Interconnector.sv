`timescale 1ns / 1ps

module Bus_Interconnector(
    input  logic [31:0] address,
    input  logic [31:0] slave_rdata1,
    input  logic [31:0] slave_rdata2,
    input  logic [31:0] slave_rdata3,
    input  logic [31:0] slave_rdata4,
    input  logic [31:0] slave_rdata5,
    output logic [31:0] master_rdata,
    output logic [4:0]  slave_sel
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
        .y(master_rdata)
    );
endmodule

module decoder (
    input  logic [31:0] x,
    output logic [4:0]  y
);
    always_comb begin 
        case (x[31:8])
            24'h0000_10: y = 5'b00001; 
            24'h0000_20: y = 5'b00010; 
            24'h0000_21: y = 5'b00100; 
            24'h0000_22: y = 5'b01000; 
            24'h0000_23: y = 5'b10000; 
            default: y = 5'b0; 
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
    output logic [31:0] y
);
    always_comb begin 
        case (sel[31:8])
            24'h0000_10: y = a; 
            24'h0000_20: y = b; 
            24'h0000_21: y = c; 
            24'h0000_22: y = d; 
            24'h0000_23: y = e; 
            default: y = 32'bx; 
        endcase
    end

    
endmodule