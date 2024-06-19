`timescale 1ns / 1ps

module tb();
    logic        ACLK;
    logic        ARESETn;
    logic [31:0] aw_addr;
    logic [31:0] w_data;
    logic        valid;
    logic        ready;
    logic [3:0]  strb;
    logic [31:0] ar_addr;
    logic [31:0] r_data;
    logic        rvalid;
    logic        rready;

    // AW Channel
    logic [31:0] AWADDR;
    logic        AWVALID;
    logic        AWREADY;
    // W Channel
    logic [31:0] WDATA;
    logic        WVALID;
    logic        WREADY;
    logic [3:0]  WSTRB;
    // B Channel
    logic [1:0]  BRESP;
    logic        BVALID;
    logic        BREADY;
    // AR Channel
    logic [31:0] ARADDR;
    logic        ARVALID;
    logic        ARREADY;
    // R Channel
    logic [31:0] RDATA;
    logic        RVALID;
    logic        RREADY;
            
    always #5 ACLK = ~ACLK;

    AXI_Master dut_master (.*);
    AXI_Slave_Memory dut_slave (.*);

    initial begin
        ACLK = 1'b0;
        ARESETn = 1'b0;
        #20 ARESETn = 1'b1;

        @(posedge ACLK);
        aw_addr = 32'd0; w_data = 32'h000000ff; strb = 4'b0001;  valid = 1'b1;
        @(posedge ACLK);
        valid = 1'b0;
        @(posedge ready);

        @(posedge ACLK);
        aw_addr = 32'd1; w_data = 32'h0000aabb; strb = 4'b0011; valid = 1'b1;
        @(posedge ACLK);
        valid = 1'b0;
        @(posedge ready);

        @(posedge ACLK);
        aw_addr = 32'd3; w_data = 32'h00aabbcc; strb = 4'b0111; valid = 1'b1;
        @(posedge ACLK);
        valid = 1'b0;
        @(posedge ready);

        @(posedge ACLK);
        aw_addr = 32'd6; w_data = 32'haabbccdd; strb = 4'b1111; valid = 1'b1;
        @(posedge ACLK);
        valid = 1'b0;
        @(posedge ready);

        @(posedge ACLK);
        ar_addr = 32'd1; rvalid = 1'b1;
        @(posedge ACLK);
        rvalid = 1'b0;
        @(posedge rready);

        @(posedge ACLK);
        ar_addr = 32'd3; rvalid = 1'b1;
        @(posedge ACLK);
        rvalid = 1'b0;
        @(posedge rready);

        #20 $finish;
    end
endmodule
