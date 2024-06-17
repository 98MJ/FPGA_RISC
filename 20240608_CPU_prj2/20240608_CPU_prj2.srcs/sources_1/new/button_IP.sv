`timescale 1ns / 1ps

module button_IP(
    input  logic clk,
    input  logic reset,
    input  logic addr,
    input  logic cs,
    input  logic we,
    input  logic inport,
    output logic [31:0]  rdata
    );
     
    logic [31:0] IDR;
    assign rdata = IDR;
    
    always_ff @( posedge clk, posedge reset) begin 
        if(reset) begin
            IDR <= 0;
        end else begin
            //if (cs & ~we) begin
                IDR[0] <= w_outdata;
            //end
        end   
    end
    /*
    always_comb begin 
        if(cs & ~we) IDR[0] = w_outdata;
        end*/
    /*
    always_comb begin 
        case ({cs,we})
            2'b10: IDR[0] = w_outdata;
        //2'b: IDR = 32'bx;
            default: IDR = 32'bx;
        endcase
    end*/

    button U_button(
        .clk(clk),
        .in(inport),
        .out(w_outdata)
    );
endmodule

module button(
    input clk,
    input in,
    output out
    );

    localparam N = 8;

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