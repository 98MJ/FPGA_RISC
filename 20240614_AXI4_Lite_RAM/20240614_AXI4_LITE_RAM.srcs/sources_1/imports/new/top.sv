`timescale 1ns / 1ps

module top(


    input   logic           ACLK,
    input   logic           ARESETn,    
    input   logic [31:0]    araddr,
    input   logic           arvalid,
    output  logic [7:0]     rdata

    );
    
    logic           ARREADY;
    logic           ARVALID;
    logic [31:0]    ARADDR;
    logic           RREADY;
    logic           RVALID;
    logic [7:0]     RDATA;

    AXI_Master U_MASTER (.*);
    AXI_Slave U_SLAVE_Memory(.*);

endmodule
