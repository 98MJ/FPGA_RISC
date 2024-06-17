`timescale 1ns / 1ps

module tb();

    logic       ACLK;
    logic       ARESETn;
    logic [31:0] araddr;
    logic       arvalid;
    logic [7:0] rdata;

    top dut (.*);

    always #5 ACLK = ~ACLK;

    initial begin
        ACLK = 1'b0;
        ARESETn = 1'b0;
        #10 ARESETn = 1'b1;
        #10;
        @(posedge ACLK) araddr = 8'b1; arvalid = 1'b1;
        repeat(2) @(posedge ACLK) arvalid = 1'b0;
        repeat(2) @(posedge ACLK) araddr = 8'd3; arvalid = 1'b1;
        repeat(2) @(posedge ACLK) arvalid = 1'b0;
        repeat(2) @(posedge ACLK) araddr = 8'd6; arvalid = 1'b1;
        repeat(2) @(posedge ACLK) arvalid = 1'b0;
        repeat(2) @(posedge ACLK) araddr = 8'd7; arvalid = 1'b1;
        repeat(2) @(posedge ACLK) arvalid = 1'b0;
        #20 $finish;
    end
endmodule
