`timescale 1ns / 1ps

module AXI_Slave (
    input   logic           ACLK,
    input   logic           ARESETn,
    // READ ADDRESS CHANNEL
    output  logic           ARREADY,
    input   logic           ARVALID,
    input   logic [31:0]    ARADDR,
    // READ DATA CHANNEL
    input   logic           RREADY,
    output  logic           RVALID,
    output  logic [7:0]     RDATA
);
    logic [7:0] slave_mem [0:7];
    logic [7:0] araddr;

    initial begin
        // for test
        for (int i=0; i<8; i++) slave_mem[i]= i+100;
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

    //assign rdata = slave_mem[araddr];


    enum  {R_IDLE_S, R_VALID_S}  r_state, r_state_next;

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) r_state <= R_IDLE_S;
        else r_state <= r_state_next;
    end

    // Next State Logic
    always_comb begin
        r_state_next = r_state;
        case (r_state)
            R_IDLE_S:  if(RREADY) r_state_next = R_VALID_S;
            R_VALID_S: if(RVALID && RREADY) r_state_next = R_IDLE_S;
        endcase
    end
    
    // output Logic
    always_comb begin 
        case (r_state)
            R_IDLE_S:  RVALID = 1'b0;
            R_VALID_S: begin
                RVALID = 1'b1;
                RDATA  = slave_mem[araddr];
            end 
            default: RVALID = 1'b0;
        endcase
    end

    //assign rdata = slave_mem[araddr];
endmodule