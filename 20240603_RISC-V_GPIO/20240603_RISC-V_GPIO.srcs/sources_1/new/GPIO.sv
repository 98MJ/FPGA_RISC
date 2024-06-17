`timescale 1ns / 1ps

module GPIO(
    input  reg          clk,
    input  reg          reset,
    input  reg          cs,
    input  reg          we,
    input  reg [3:0]    addr,
    input  reg [31:0]   wdata,
    output reg [31:0]   rdata,
    inout  reg [3:0]    IOPort 
    );
    
    reg [31:0] MDR, IDR, ODR;
    reg [31:0] rdata_reg;
    
    assign rdata = rdata_reg;
    assign IOPort[0] = MDR[0] ? ODR[0] : 1'bz;
    assign IOPort[1] = MDR[1] ? ODR[1] : 1'bz;
    assign IOPort[2] = MDR[2] ? ODR[2] : 1'bz;
    assign IOPort[3] = MDR[3] ? ODR[3] : 1'bz;

    always_ff @( posedge clk, posedge reset ) begin
        if(reset) begin
            MDR <= 0;
            ODR <= 0;
        end else begin
            if(cs & we) begin
                case (addr[3:2])
                    2'b00: MDR <= wdata;
                    2'b10: ODR <= wdata;
                endcase
            end
        end
    end
    
    always_comb begin 
        IDR[0] = MDR[0] ? 1'bz : IOPort[0];
        IDR[1] = MDR[1] ? 1'bz : IOPort[1];
        IDR[2] = MDR[2] ? 1'bz : IOPort[2];
        IDR[3] = MDR[3] ? 1'bz : IOPort[3];
    end
endmodule
