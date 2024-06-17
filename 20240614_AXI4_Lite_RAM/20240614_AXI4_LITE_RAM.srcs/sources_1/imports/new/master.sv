`timescale 1ns/1ps

module AXI_Master (
    input   logic           ACLK,
    input   logic           ARESETn,
    // READ ADDRESS CHANNEL
    input   logic           ARREADY,
    output  logic           ARVALID,
    output  logic [31:0]    ARADDR,
    // READ DATA CHANNEL
    output   logic           RREADY,
    input    logic           RVALID,
    input    logic [7:0]     RDATA,
    // Sending inputs data to transfered  through AXI protocol
    input   logic [31:0]    araddr,
    input   logic           arvalid,
    output  logic [7:0]     rdata
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

    enum {R_IDLE_S, R_READY_S, R_VALID_S} r_state, r_state_next;
    
    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) r_state <= R_IDLE_S;
        else r_state <= r_state_next;
    end

    // Next State Logic
    always_comb begin : R_NEXT_STATE  
        r_state_next = r_state;
        case (r_state)
            R_IDLE_S   : if(ARREADY) r_state_next = R_READY_S;
            R_READY_S  : if(RVALID) r_state_next = R_VALID_S;
            R_VALID_S   : r_state_next = R_IDLE_S;
        endcase
    end
    
    always_comb begin 
        case (r_state)
            R_IDLE_S: RREADY = 1'b0;
            R_READY_S : begin
                RREADY = 1'b1;
            end
            R_VALID_S : begin
                rdata = RDATA;
                RREADY = 1'b1;
            end
            default: RREADY = 1'b0;
        endcase
    end
endmodule