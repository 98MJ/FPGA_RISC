`timescale 1ns/1ps

module AXI_Master (
    input   logic           ACLK,
    input   logic           ARESETn,
    // READ ADDRESS CHANNEL
    input   logic           ARREADY,
    output  logic           ARVALID,
    output  logic [31:0]    ARADDR,
    // Sending inputs data to transfered  through AXI protocol
    input   logic [31:0]    araddr,
    input   logic           arvalid
);
    ////////// READ ADDR CHANNEL MASTER/////////////////
    enum {AR_IDLE_S, AR_VALID_S} ar_state, ar_state_next;
    
    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) ar_state <= AR_IDLE_S;
        else ar_state <= ar_state_next;
    end

    // Next State Logic
    always_comb begin : AR_NEXT_STATE  
        ar_state_next = ar_state;
        case (ar_state)
            AR_IDLE_S   : if(arvalid) ar_state_next = AR_VALID_S;
            AR_VALID_S  : if(ARVALID && ARREADY) ar_state_next = AR_IDLE_S;
        endcase
    end
    
    always_comb begin 
        case (ar_state)
            AR_IDLE_S: ARVALID = 1'b0;
            AR_VALID_S : begin
                ARADDR = araddr;
                ARVALID = 1'b1;
            end
            default: ARVALID = 1'b0;
        endcase
    end
endmodule