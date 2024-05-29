`timescale 1ns/1ps

module controlunit (
    input clk,
    input reset,
    output reg AsrcMuxSel,
    output reg SumsrcMuxSel,
    output reg ALoad,
    output reg SumLoad,
    output reg OutBufSel,
    input ALt11
);
        
    localparam S0 = 3'd0, S1 = 3'd1, S2 = 3'd2, S3 = 3'd3, S4 = 3'd4, S5 = 3'd5;

    reg [2:0] state, state_next;

    always @(posedge clk, posedge reset) begin
        if (reset) state <= S0;
        else state <= state_next;
    end

    //next state logic

    always @(*) begin
        state_next = state;
        case (state)
            S0: state_next = S1;
            S1: begin
                if (ALt11) state_next = S2;
                else state_next = S5;
            end
            S2: state_next = S3;
            S3: state_next = S4;
            S4: state_next = S1;
            S5: state_next = S5;
            default: state_next = S1;
        endcase
    end
    always @(*) begin
        AsrcMuxSel = 1'b0;
        SumsrcMuxSel = 1'b0;
        ALoad      = 1'b0;
        SumLoad = 1'b0;
        OutBufSel  = 1'b0;

        case (state)
            S0: begin
                AsrcMuxSel = 1'b0;
                SumsrcMuxSel = 1'b0;
                ALoad      = 1'b1;
                SumLoad = 1'b1;
                OutBufSel  = 1'b0;
            end
            S1: begin
                AsrcMuxSel = 1'b1;
                SumsrcMuxSel = 1'b1;
                ALoad      = 1'b0;
                SumLoad = 1'b0;
                OutBufSel  = 1'b0;
            end
            S2: begin
                AsrcMuxSel = 1'b1;
                SumsrcMuxSel = 1'b1;
                ALoad      = 1'b0;
                SumLoad = 1'b0;
                OutBufSel  = 1'b1;
            end
            S3: begin
                AsrcMuxSel = 1'b1;
                SumsrcMuxSel = 1'b1;
                ALoad      = 1'b0;
                SumLoad = 1'b1;
                OutBufSel  = 1'b0;
            end
            S4: begin
                AsrcMuxSel = 1'b1;
                SumsrcMuxSel = 1'b1;
                ALoad      = 1'b1;
                SumLoad = 1'b0;
                OutBufSel  = 1'b0;
            end
            S5: begin
                AsrcMuxSel = 1'b0;
                SumsrcMuxSel = 1'b0;
                ALoad      = 1'b0;
                SumLoad = 1'b0;
                OutBufSel  = 1'b0;
                
            end
            default: begin
                AsrcMuxSel = 1'b0;
                SumsrcMuxSel = 1'b0;
                ALoad      = 1'b0;
                SumLoad = 1'b0;
                OutBufSel  = 1'b0;
            end
        endcase
    end

endmodule

