`timescale 1ns / 1ps

module AXI_Slave (
    input   logic           ACLK,
    input   logic           ARESETn,
    // READ ADDRESS CHANNEL
    output  logic           ARREADY,
    input   logic           ARVALID,
    input   logic [31:0]    ARADDR,
    //
    output  logic [7:0]     rdata

);
    logic [7:0] slave_mem [0:7];
    logic [7:0] araddr;

    initial begin
        // for test
        for (int i=0; i<8; i++) slave_mem[i]= i;
    end

    ///////////// READ ADDR CHANNEL SLAVE /////
    enum  {AR_IDLE_S, AR_READY_S}  ar_state, ar_state_next;

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) ar_state <= AR_IDLE_S;
        else ar_state <= ar_state_next;
    end

    // Next State Logic
    always_comb begin
        ar_state_next = ar_state;
        case (ar_state)
            AR_IDLE_S:  if(ARVALID) ar_state_next = AR_READY_S;
            AR_READY_S: if(ARVALID && ARREADY) ar_state_next = AR_IDLE_S;
        endcase
    end
    
    // output Logic
    always_comb begin 
        case (ar_state)
            AR_IDLE_S:  ARREADY = 1'b0;
            AR_READY_S: begin
                ARREADY = 1'b1;
                araddr = ARADDR;
            end 
            default: ARREADY = 1'b0;
        endcase
    end

    assign rdata = slave_mem[araddr];
endmodule