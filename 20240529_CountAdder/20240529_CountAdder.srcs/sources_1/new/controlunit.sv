`timescale 1ns / 1ps
/*
interface sig_interface;
    logic ILe10;
    logic ISrcMuxSel;
    logic SumSrcMuxSel;
    logic ILoad;
    logic SumLoad;
    logic AdderSrcMuxSel;
    logic OutLoad;
    
    modport dp (
        output ILe10,
        input ISrcMuxSel,
        input SumSrcMuxSel,
        input ILoad,
        input SumLoad,
        input AdderSrcMuxSel,
        input OutLoad
    );
    modport cu (
        input ILe10,
        output ISrcMuxSel,
        output SumSrcMuxSel,
        output ILoad,
        output SumLoad,
        output AdderSrcMuxSel,
        output OutLoad
    );


endinterface //controlSignal_interface*/

module controlunit(
    input clk,
    input reset,
    input ILe10,
    output logic ISrcMuxSel,
    output logic SumSrcMuxSel,
    output logic ILoad,
    output logic SumLoad,
    output logic AdderSrcMuxSel,
    output logic OutLoad
    
    );
    enum logic[2:0] {S0, S1, S2, S3, S4, S5} state, state_next;

    always_ff @( posedge clk, posedge reset ) begin 
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
            S1: begin
                if(ILe10) state_next = S2;
                else state_next = S5;
            end
            S2: state_next = S3;
            S3: state_next = S4;
            S4: state_next = S1;
            S5: state_next = S5;
            default: state_next = S1;
        endcase
    end

    always_comb begin 
        ISrcMuxSel =    1'b0;
        SumSrcMuxSel =  1'b0;
        ILoad =         1'b0;
        SumLoad =       1'b0;
        AdderSrcMuxSel = 1'b0;
        OutLoad =       1'b0;
        case (state)
            S0: begin
                ISrcMuxSel =    1'b0;
                SumSrcMuxSel =  1'b0;
                ILoad =         1'b1;
                SumLoad =       1'b1;
                AdderSrcMuxSel = 1'b0;
                OutLoad =       1'b0;
            end 
            S1: begin
                ISrcMuxSel =    1'b1;
                SumSrcMuxSel =  1'b1;
                ILoad =         1'b0;
                SumLoad =       1'b0;
                AdderSrcMuxSel = 1'b0;
                OutLoad =       1'b0;
            end
            S2: begin
                ISrcMuxSel =    1'b0;
                SumSrcMuxSel =  1'b1;
                ILoad =         1'b0;
                SumLoad =       1'b1;
                AdderSrcMuxSel = 1'b0;
                OutLoad =       1'b0;
            end
            S3: begin
                ISrcMuxSel =    1'b1;
                SumSrcMuxSel =  1'b0;
                ILoad =         1'b1;
                SumLoad =       1'b0;
                AdderSrcMuxSel = 1'b1;
                OutLoad =       1'b0;
            end
            S4: begin
                ISrcMuxSel =    1'b1;
                SumSrcMuxSel =  1'b1;
                ILoad =         1'b0;
                SumLoad =       1'b0;
                AdderSrcMuxSel = 1'b0;
                OutLoad =       1'b1;
            end
            S5: begin
                ISrcMuxSel =    1'b0;
                SumSrcMuxSel =  1'b0;
                ILoad =         1'b0;
                SumLoad =       1'b0;
                AdderSrcMuxSel = 1'b0;
                OutLoad =       1'b0;
            end
            default : begin
                ISrcMuxSel =    1'b0;
                SumSrcMuxSel =  1'b0;
                ILoad =         1'b0;
                SumLoad =       1'b0;
                AdderSrcMuxSel = 1'b0;
                OutLoad =       1'b0;                
            end
        endcase
    end
endmodule
