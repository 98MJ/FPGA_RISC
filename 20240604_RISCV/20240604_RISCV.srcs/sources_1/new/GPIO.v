`timescale 1ns / 1ps

module GPIO(
    input   clk,
    input   reset,
    input   [3:0] addr,
    input   cs,
    input   we,
    input   [31:0] wdata,
    output   [31:0] rdata,
    inout   [3:0] IOPort
    );

    //localparam MDR = 0, IDR = 1, ODR = 2;

    //reg [31:0] gpioReg[0:2]; // 0:MDR, 1:IDR, 2:ODR
    reg [31:0] MDR;
    reg [31:0] IDR;
    reg [31:0] ODR;
    reg [31:0] rdata_reg;
    //reg [3:0]
   

    assign rdata = rdata_reg;

    always @(posedge clk, posedge reset) begin
        if (reset) begin
            MDR <= 0;
            ODR <= 0;
        end else begin
            if(cs & we) begin
//                MDR <= 0;
//                ODR <= 0;
                case (addr[3:2])
                    2'b00: MDR <= wdata;  
                    2'b10: ODR <= wdata;
                endcase        
            end
        end
    end

    always @(*) begin
        case (addr[3:2])
            2'b00: rdata_reg = MDR;
            2'b01: rdata_reg = IDR;
            2'b10: rdata_reg = ODR;
            default: rdata_reg = 32'bx;
        endcase
    end

    always @(*) begin          
        IDR[0] = MDR[0] ? 1'bz : IOPort[0];
        IDR[1] = MDR[1] ? 1'bz : IOPort[1];
        IDR[2] = MDR[2] ? 1'bz : IOPort[2];
        IDR[3] = MDR[3] ? 1'bz : IOPort[3];
    end      
   
    assign IOPort[0] = MDR[0] ? ODR[0]: 1'bz;
    assign IOPort[1] = MDR[1] ? ODR[1]: 1'bz;
    assign IOPort[2] = MDR[2] ? ODR[2]: 1'bz;
    assign IOPort[3] = MDR[3] ? ODR[3]: 1'bz;
          

endmodule
