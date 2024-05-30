`timescale 1ns / 1ps

module controlunit(
    input              clk,
    input              reset,
    input              LE10,
    output logic       RFSrcMuxSel,
    output logic [1:0] raddr1,
    output logic [1:0] raddr2,
    output logic [1:0] waddr,
    output logic       OutLoad,
    output logic       we
    );


    enum logic[2:0] {S0, S1, S2, S3, S4, S5, S6, S7} state, state_next;

    always_ff @( posedge clk, posedge reset) begin 
        if (reset) begin
            state <= S0;
        end else begin
            state <= state_next;
        end
    end

    always_comb begin
        state_next = state;
        case (state)
            S0: state_next = S1; 
            S1: state_next = S2; 
            S2: state_next = S3; 
            S3: begin
                if(LE10) state_next = S4;
                else state_next = S7;
            end
            S4: state_next = S5; 
            S5: state_next = S6;
            S6: state_next = S3; 
            S7: state_next = S7; 
            default: state_next = S3;
        endcase
    end
    
    always_comb begin 
        RFSrcMuxSel = 1'b0;
        OutLoad     = 1'b0;
        raddr1      = 2'b0;
        raddr2      = 2'b0;
        waddr       = 2'b0;
        we          = 1'b0;
        case (state)
            S0: begin
                RFSrcMuxSel = 1'b0;
                OutLoad     = 1'b0;
                raddr1      = 2'b0;
                raddr2      = 2'b0;
                waddr       = 2'b01;
                we          = 1'b1;         
            end 
            S1: begin
                RFSrcMuxSel = 1'b0;
                OutLoad     = 1'b0;
                raddr1      = 2'b0;
                raddr2      = 2'b0;
                waddr       = 2'b10;
                we          = 1'b1;         
            end 
            S2: begin
                RFSrcMuxSel = 1'b1;
                OutLoad     = 1'b0;
                raddr1      = 2'b0;
                raddr2      = 2'b0;
                waddr       = 2'b11;
                we          = 1'b1;         
            end 
            S3: begin
                RFSrcMuxSel = 1'b0;
                OutLoad     = 1'b0;
                raddr1      = 2'b01;
                raddr2      = 2'b00;
                waddr       = 2'b01;
                we          = 1'b0;         
            end 
            S4: begin
                RFSrcMuxSel = 1'b0;
                OutLoad     = 1'b0;
                raddr1      = 2'b01;
                raddr2      = 2'b10;
                waddr       = 2'b10;
                we          = 1'b1;         
            end 
            S5: begin
                RFSrcMuxSel = 1'b0;
                OutLoad     = 1'b0;
                raddr1      = 2'b01;
                raddr2      = 2'b11;
                waddr       = 2'b01;
                we          = 1'b1;         
            end 
            S6: begin
                RFSrcMuxSel = 1'b0;
                OutLoad     = 1'b1;
                raddr1      = 2'b10;
                raddr2      = 2'b0;
                waddr       = 2'b01;
                we          = 1'b0;         
            end 
            S7: begin
                RFSrcMuxSel = 1'b0;
                OutLoad     = 1'b0;
                raddr1      = 2'b0;
                raddr2      = 2'b0;
                waddr       = 2'b01;
                we          = 1'b0;         
            end 
        endcase
    end
endmodule
