`timescale 1ns / 1ps

module button_IP(
    input  logic        clk,
    input  logic        addr,
    input  logic        cs,
    input  logic        we,
    input  logic        inPort,
    output logic [31:0] rdata
    );

    logic q_reg;

    assign rdata = q_reg;

    always_ff @( posedge clk ) begin 
        if(cs & ~we) begin
            q_reg = w_rdata;
        end else q_reg = 1'b0;
    end

    button U_btn(
        .clk(clk),
        .in(inPort),
        .out(w_rdata)
    );
    
endmodule

module button(
    input clk,
    input in,
    output out
    );

    localparam N = 2;

    reg [N-1 : 0] q_reg, q_next;

    always @(posedge clk) begin
        q_reg <= q_next;
    end

    // next state logic
    always @(q_reg, in) begin
        q_next = {in, q_reg[N-1:1]};
    end

    // output logic
    assign out = (&q_reg[N-1:1] & ~q_reg[0]);
endmodule