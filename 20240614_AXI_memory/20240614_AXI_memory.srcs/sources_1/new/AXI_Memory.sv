`timescale 1ns / 1ps

module AXI_Memory(
    input   logic        ACLK,
    input   logic        ARESETn,
    input   logic [31:0] aw_addr,
    input   logic [31:0] w_data,
    input   logic        valid,
    input   logic [3:0]  strb,
    output  logic        ready,
    input   logic [31:0] ar_addr,
    output  logic [31:0] r_data,
    input   logic        rvalid,
    output  logic        rready
    );

    logic [31:0] AWADDR, WDATA, ARADDR, RDATA;
    logic [3:0] WSTRB;
    logic [1:0] BRESP;
    logic AWVALID, AWREADY, WVALID, WREADY, BVALID, BREADY, ARVALID, ARREADY, RVALID, RREADY;
    
    AXI_Master U_Master(.*);
    AXI_Slave_Memory U_Slave(.*);

endmodule

module AXI_Master (
    input   logic        ACLK,
    input   logic        ARESETn,
    input   logic [31:0] aw_addr,
    input   logic [31:0] w_data,
    input   logic        valid,
    input   logic [3:0]  strb,
    output  logic        ready,
    input   logic [31:0] ar_addr,
    output  logic [31:0] r_data,
    input   logic        rvalid,
    output  logic        rready,

    // AW Channel
    output  logic [31:0] AWADDR,
    output  logic        AWVALID,
    input   logic        AWREADY,
    // W Channel
    output  logic [31:0] WDATA,
    output  logic        WVALID,
    input   logic        WREADY,
    output  logic [3:0]  WSTRB,
    // B Channel
    input   logic [1:0]  BRESP,
    input   logic        BVALID,
    output  logic        BREADY,
    // AR Channel
    output  logic [31:0] ARADDR,
    output  logic        ARVALID,
    input   logic        ARREADY,
    // R Channel
    input   logic [31:0] RDATA,
    input   logic        RVALID,
    output  logic        RREADY
            

);
    // AW Channel
    enum bit {AW_IDLE_S, AW_VALID_S} aw_state, aw_state_next;
    logic [31:0] aw_addr_reg, aw_addr_next;

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) begin
            aw_state <= AW_IDLE_S;
            aw_addr_reg <= 0;
        end
        else begin
            aw_state <= aw_state_next;
            aw_addr_reg <= aw_addr_next;
        end
    end
    
    always_comb begin  
        aw_state_next = aw_state;
        aw_addr_next = aw_addr_reg;
        //aw_addr_reg   = 0;
        AWVALID       = 1'b0;
        case (aw_state)
            AW_IDLE_S: begin
                AWVALID = 1'b0;
                if (valid) begin
                    aw_state_next   = AW_VALID_S;
                    aw_addr_next    = aw_addr;
                end
            end
            AW_VALID_S: begin
                AWVALID = 1'b1;
                AWADDR  = aw_addr_reg;
                if(AWVALID && AWREADY) begin
                    aw_state_next = AW_IDLE_S;
                end
            end
        endcase
    end

    // W Channel
    enum bit {W_IDLE_S, W_VALID_S} w_state, w_state_next;
    logic [31:0] w_data_reg, w_data_next;
    logic [3:0] w_strb_reg, w_strb_next;

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) begin
            w_state <= W_IDLE_S;
            w_data_reg <= 0;
            w_strb_reg <= 0;
        end
        else begin
            w_state <= w_state_next;
            w_data_reg <= w_data_next;
            w_strb_reg <= w_strb_next;
        end
    end
    
    always_comb begin  
        w_state_next = w_state;
        //w_data_reg   = 0;
        WVALID       = 1'b0;
        case (w_state)
            W_IDLE_S: begin
                WVALID = 1'b0;
                if (valid) begin
                    w_state_next    = W_VALID_S;
                    w_data_next     = w_data;
                    w_strb_next     = strb;
                end
            end
            W_VALID_S: begin
                WVALID = 1'b1;
                WDATA  = w_data_reg;
                WSTRB  = w_strb_reg;
                if(WVALID && WREADY) begin
                    w_state_next = W_IDLE_S;
                end
            end
        endcase
    end

    // B Channel
    enum bit {B_IDLE_S, B_READY_S} b_state, b_state_next;
    logic [1:0] b_resp_reg, b_resp_next;

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) begin
            b_state <= B_IDLE_S;
            b_resp_reg <= 0;
        end
        else begin
            b_state <= b_state_next;
            b_resp_reg <= b_resp_next;
        end
    end
    
    always_comb begin  
        b_state_next = b_state;
        b_resp_next  = b_resp_reg;
        BREADY       = 1'b0;
        ready        = 1'b0;
        case (b_state)
            B_IDLE_S: begin
                BREADY = 1'b0;
                ready  = 1'b0;
                if (WVALID) begin
                    b_state_next = B_READY_S;
                end
            end
            B_READY_S: begin
                BREADY = 1'b1;
                if(BVALID && BREADY) begin
                    b_state_next = B_IDLE_S;
                    b_resp_next  = BRESP;
                    ready        = 1'b1;
                end
            end
        endcase
    end

    // AR Channel
    enum bit {AR_IDLE_S, AR_VALID_S} ar_state, ar_state_next;
    logic [31:0] ar_addr_reg, ar_addr_next;

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) begin
            ar_state <= AR_IDLE_S;
            ar_addr_reg <= 0;
        end
        else begin
            ar_state <= ar_state_next;
            ar_addr_reg <= ar_addr_next;
        end
    end
    
    always_comb begin  
        ar_state_next = ar_state;
        ar_addr_next = ar_addr_reg;
        //aw_addr_reg   = 0;
        ARVALID       = 1'b0;
        case (ar_state)
            AR_IDLE_S: begin
                ARVALID = 1'b0;
                if (rvalid) begin
                    ar_state_next   = AR_VALID_S;
                    ar_addr_next    = ar_addr;
                end
            end
            AR_VALID_S: begin
                ARVALID = 1'b1;
                ARADDR  = ar_addr_reg;
                if(ARVALID && ARREADY) begin
                    ar_state_next = AR_IDLE_S;
                end
            end
        endcase
   end
    // R Channel
    enum bit {R_IDLE_S, R_READY_S} r_state, r_state_next;
//    logic [31:0] r_data_reg, r_data_next;

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) begin
            r_state <= R_IDLE_S;
    //        r_data_reg <= 0;
        end
        else begin
            r_state <= r_state_next;
    //        r_data_reg <= r_data_next;
        end
    end
    
    always_comb begin  
        r_state_next = r_state;
        //r_data_next = r_data_reg;
        //aw_addr_reg   = 0;
        RREADY       = 1'b0;
        rready       = 1'b0;
        case (r_state)
            R_IDLE_S: begin
                RREADY = 1'b0;
                rready = 1'b0;
                if (ARVALID) begin
                    r_state_next   = R_READY_S;
                end
            end
            R_READY_S: begin
                RREADY = 1'b1;
                r_data  = ar_addr_reg;
                if(RVALID && RREADY) begin
                    r_state_next = R_IDLE_S;
                    r_data       = RDATA;
                    rready       = 1'b1;
                end
            end
        endcase
   end
endmodule

module AXI_Slave_Memory (
    input   logic        ACLK,
    input   logic        ARESETn,
    // AW Channel
    input   logic [31:0] AWADDR,
    input   logic        AWVALID,
    output  logic        AWREADY,
    // W Channel
    input   logic [31:0] WDATA,
    input   logic        WVALID,
    output  logic        WREADY,
    input   logic [3:0]  WSTRB,
    // B Channel
    output  logic [1:0]  BRESP,
    output  logic        BVALID,
    input   logic        BREADY,
    // AR Channel
    input   logic [31:0] ARADDR,
    input   logic        ARVALID,
    output  logic        ARREADY,
    // R Channel
    output  logic [31:0] RDATA,
    output  logic        RVALID,
    input   logic        RREADY
);
    logic [7:0] slave_mem[0:15];
    // AW Channel
    enum bit {AW_IDLE_S, AW_READY_S} aw_state, aw_state_next;
    logic [31:0] aw_addr_reg, aw_addr_next;

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) begin
            aw_state <= AW_IDLE_S;
            aw_addr_reg <= 0;
        end
        else begin
            aw_state <= aw_state_next;
            aw_addr_reg <= aw_addr_next;
        end

    end
    
    always_comb begin  
        aw_state_next = aw_state;
        aw_addr_next = aw_addr_reg;
        AWREADY       = 1'b0;
        case (aw_state)
            AW_IDLE_S: begin
                AWREADY = 1'b0;
                if (AWVALID) begin
                    aw_state_next   = AW_READY_S;
                    aw_addr_next    = AWADDR;
                end
            end
            AW_READY_S: begin
                AWREADY = 1'b1;
                aw_addr_next = AWADDR;
                if(AWVALID && AWREADY) begin
                    aw_state_next = AW_IDLE_S;
                end
            end
        endcase
    end

    // W Channel
    enum bit {W_IDLE_S, W_READY_S} w_state, w_state_next;
    logic [31:0] w_data_reg, w_data_next;
    logic [3:0] w_strb_reg, w_strb_next;

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) begin
            w_state <= W_IDLE_S;
            w_data_reg <= 0;
            w_strb_reg <= 0;
        end
        else begin
            w_state <= w_state_next;
            w_data_reg <= w_data_next;
            w_strb_reg <= w_strb_next;
        end
    end
    
    always_comb begin  
        w_state_next = w_state;
        w_data_next  = w_data_reg;
        w_strb_next  = w_strb_reg;
        WREADY       = 1'b0;
        case (w_state)
            W_IDLE_S: begin
                WREADY = 1'b0;
                if (AWREADY && WVALID) begin
                    w_state_next   = W_READY_S;
                    w_data_next    = WDATA;
                    w_strb_next    = WSTRB;
                end
            end
            W_READY_S: begin
                WREADY = 1'b1;
                case (w_strb_reg)
                    4'b0001 : slave_mem[aw_addr_reg] = w_data_reg[7:0];
                    4'b0010 : slave_mem[aw_addr_reg+1] = w_data_reg[15:8]; 
                    4'b0011 : begin
                        slave_mem[aw_addr_reg] = w_data_reg[7:0];
                        slave_mem[aw_addr_reg+1] = w_data_reg[15:8];
                    end
                    4'b0100 : slave_mem[aw_addr_reg+2] = w_data_reg[23:16]; 
                    4'b0101 : begin
                        slave_mem[aw_addr_reg] = w_data_reg[7:0];
                        slave_mem[aw_addr_reg+2] = w_data_reg[23:16];
                    end
                    4'b0110 : begin
                        slave_mem[aw_addr_reg+1] = w_data_reg[15:8];
                        slave_mem[aw_addr_reg+2] = w_data_reg[23:16];
                    end
                    4'b0111 : begin
                        slave_mem[aw_addr_reg] = w_data_reg[7:0];
                        slave_mem[aw_addr_reg+1] = w_data_reg[15:8];
                        slave_mem[aw_addr_reg+2] = w_data_reg[23:16];
                    end
                    4'b1000 : slave_mem[aw_addr_reg+3] = w_data_reg[31:24]; 
                    4'b1001 : begin
                        slave_mem[aw_addr_reg] = w_data_reg[7:0];
                        slave_mem[aw_addr_reg+3] = w_data_reg[31:24];  
                    end
                    4'b1010 : begin
                        slave_mem[aw_addr_reg+1] = w_data_reg[15:8];
                        slave_mem[aw_addr_reg+3] = w_data_reg[31:24];
                    end
                    4'b1011 : begin
                        slave_mem[aw_addr_reg] = w_data_reg[7:0];
                        slave_mem[aw_addr_reg+1] = w_data_reg[15:8];
                        slave_mem[aw_addr_reg+3] = w_data_reg[31:24];
                    end
                    4'b1100 : begin
                        slave_mem[aw_addr_reg+2] = w_data_reg[23:16];
                        slave_mem[aw_addr_reg+3] = w_data_reg[31:24];
                    end
                    4'b1101 : begin
                        slave_mem[aw_addr_reg] = w_data_reg[7:0];
                        slave_mem[aw_addr_reg+2] = w_data_reg[23:16];
                        slave_mem[aw_addr_reg+3] = w_data_reg[31:24];
                    end   
                    4'b1110 : begin
                        slave_mem[aw_addr_reg+1] = w_data_reg[15:8];
                        slave_mem[aw_addr_reg+2] = w_data_reg[23:16];
                        slave_mem[aw_addr_reg+3] = w_data_reg[31:24];
                    end
                    4'b1111 : begin
                        slave_mem[aw_addr_reg] = w_data_reg[7:0];
                        slave_mem[aw_addr_reg+1] = w_data_reg[15:8];
                        slave_mem[aw_addr_reg+2] = w_data_reg[23:16];
                        slave_mem[aw_addr_reg+3] = w_data_reg[31:24];
                    end
                    default : begin
                    end
                endcase
                //slave_mem[aw_addr_reg] = w_data_reg;
                if(WVALID && WREADY) begin
                    w_state_next = W_IDLE_S;
                end
            end
        endcase
    end

    // B Channel
    enum bit {B_IDLE_S, B_VALID_S} b_state, b_state_next;
    logic [1:0] b_resp_reg, b_resp_next;

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) begin
            b_state <= B_IDLE_S;
            b_resp_reg <= 0;
        end
        else begin
            b_state <= b_state_next;
            b_resp_reg <= b_resp_next;
        end
    end
    
    always_comb begin  
        b_state_next = b_state;
        b_resp_next  = b_resp_reg;
        BVALID       = 1'b0;
        case (b_state)
            B_IDLE_S: begin
                BVALID = 1'b0;
                if (WVALID && WREADY) begin
                    b_state_next   = B_VALID_S;
                    b_resp_next= 2'b00;
                end
            end
            B_VALID_S: begin
                BVALID = 1'b1;
                BRESP  = b_resp_reg;
                if(BVALID && BREADY) begin
                    b_state_next = B_IDLE_S;
                end
            end
        endcase
    end
    
    enum bit {AR_IDLE_S, AR_READY_S} ar_state, ar_state_next;
    logic [31:0] ar_addr_reg, ar_addr_next;

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) begin
            ar_state <= AR_IDLE_S;
            ar_addr_reg <= 0;
        end
        else begin
            ar_state <= ar_state_next;
            ar_addr_reg <= ar_addr_next;
        end
    end
    
    always_comb begin  
        ar_state_next = ar_state;
        ar_addr_next = ar_addr_reg;
        //aw_addr_reg   = 0;
        ARREADY       = 1'b0;
        case (ar_state)
            AR_IDLE_S: begin
                ARREADY = 1'b0;
                if (ARVALID) begin
                    ar_state_next   = AR_READY_S;
                    ar_addr_next    = ARADDR;
                end
            end
            AR_READY_S: begin
                ARREADY = 1'b1;
                ar_addr_next  = ARADDR;
                if(ARVALID && ARREADY) begin
                    ar_state_next = AR_IDLE_S;
                end
            end
        endcase
    end
    // R
    enum bit {R_IDLE_S, R_VALID_S} r_state, r_state_next;
    logic [31:0] r_data_reg, r_data_next;
    /*
    logic [7:0] r_mem [0:7];

    initial begin
        for (int i=0; i<8; i++)begin
            r_mem[i] = 100+i;
        end
    end */

    always_ff @( posedge ACLK, negedge ARESETn ) begin
        if(!ARESETn) begin
            r_state <= R_IDLE_S;
            r_data_reg <= 0;
        end
        else begin
            r_state <= r_state_next;
            r_data_reg <= r_data_next;
        end
    end
    
    always_comb begin  
        r_state_next = r_state;
        r_data_next = r_data_reg;
        RVALID     = 1'b0;
        case (r_state)
            R_IDLE_S: begin
                RVALID = 1'b0;
                if (ARVALID && ARREADY) begin                    
                    r_data_next[7:0]   = slave_mem[ar_addr_reg];
                    r_data_next[15:8]  = slave_mem[ar_addr_reg+1];
                    r_data_next[23:16] = slave_mem[ar_addr_reg+2];
                    r_data_next[31:24] = slave_mem[ar_addr_reg+3];
                    r_state_next       = R_VALID_S;
                end
            end
            R_VALID_S :  begin
                RVALID  = 1'b1;
                RDATA   = r_data_reg;
                if(RVALID && RREADY) begin
                    r_state_next = R_IDLE_S;
                end
            end
        endcase
    end
endmodule