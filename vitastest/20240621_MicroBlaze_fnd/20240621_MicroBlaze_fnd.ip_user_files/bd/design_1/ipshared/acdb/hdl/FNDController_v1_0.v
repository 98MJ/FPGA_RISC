
`timescale 1 ns / 1 ps

	module FND_Controller_ip_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here
   		output	wire [7:0] fndFont,
   		output	wire [3:0] fndCom,
		// User ports ends
		// Do not modify the ports beyond this line

		

		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
	wire [13:0] w_digit;
// Instantiation of Axi Bus Interface S00_AXI
	FND_Controller_ip_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) FND_Controller_ip_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		.fnd_digit(w_digit)
	);

	// Add user logic here
	//wire [13:0] w_digit;
	
	fndController U_fndController(
   		.clk(s00_axi_aclk),
   		.digit(w_digit),
   		.fndFont(fndFont),
   		.fndCom(fndCom)
    );

	// User logic ends

	endmodule

module fndController(
    input reset,
    input clk,
    input [13:0] digit,
    output [7:0] fndFont,
    output [3:0] fndCom
    );


    wire [3:0] w_digit_1, w_digit_10, w_digit_100, w_digit_1000;
    wire [3:0] w_digit;
    wire [1:0] w_count;
    wire [1:0] w_clk_1khz;

    clkDiv #(.MAX_COUNT(100_000)) U_ClkDiv (
    .clk(clk),
    .o_clk(w_clk_1khz),
    .reset(reset)
    );
   

   counter #(.MAX_COUNT(4)) U_Counter_2bit(
    .clk(w_clk_1khz),
    .reset(reset),
    .count(w_count)
   );

    digitSplitter U_DigitSplitter(
    .i_digit(digit),
    .o_digit_1(w_digit_1),
    .o_digit_10(w_digit_10),
    .o_digit_100(w_digit_100),
    .o_digit_1000(w_digit_1000)
    );

    mux U_Mux_41(
    .sel(w_count),
    .x0(w_digit_1),
    .x1(w_digit_10),
    .x2(w_digit_100),
    .x3(w_digit_1000),
    .y(w_digit)
    );

    BDCtoSEG U_BcdToSeg(
    .bcd(w_digit),
    .seg(fndFont)
    );

    Decoder_2_4 U_Decoder_24(
        .i(w_count),
        .o(fndCom)
    );

endmodule

module digitSplitter(
    input [13:0] i_digit,
    output [3:0] o_digit_1,
    output [3:0] o_digit_10,
    output [3:0] o_digit_100,
    output [3:0] o_digit_1000
    );

    assign o_digit_1    = i_digit % 10;
    assign o_digit_10   = i_digit / 10 % 10;
    assign o_digit_100  = i_digit / 100 % 10;
    assign o_digit_1000 = i_digit / 1000 % 10;
endmodule

module BDCtoSEG(
    input [3:0] bcd,
    output reg[7:0] seg
    );

    always @(bcd) begin
        case (bcd)
            4'h0 : seg = 8'hc0;
            4'h1 : seg = 8'hf9;
            4'h2 : seg = 8'ha4;
            4'h3 : seg = 8'hb0;
            4'h4 : seg = 8'h99;
            4'h5 : seg = 8'h92;
            4'h6 : seg = 8'h82;
            4'h7 : seg = 8'hf8;
            4'h8 : seg = 8'h80;
            4'h9 : seg = 8'h90;
            4'ha : seg = 8'h88;
            4'hb : seg = 8'h83;
            4'hc : seg = 8'hc6;
            4'hd : seg = 8'ha1;
            4'he : seg = 8'h86;
            4'hf : seg = 8'h8e;
            default: seg = 8'hff;
        endcase
    end

endmodule

module Decoder_2_4(
        input [1:0] i,
        output reg [3:0] o
    );

    always @(i) begin
        case (i)
            2'b00 : o = 4'b1110;
            2'b01 : o = 4'b1101;
            2'b10 : o = 4'b1011;
            2'b11 : o = 4'b0111;
        endcase
        
    end
endmodule

module mux(
    input       [1:0] sel,
    input       [3:0] x0,
    input       [3:0] x1,
    input       [3:0] x2,
    input       [3:0] x3,
    output reg  [3:0] y
    );

    always @(*) begin // always @(sel, x0, x1, x2, x3) *은 모든 값 감시
        case (sel)  
            2'b00: y=x0;
            2'b01: y=x1;
            2'b10: y=x2;
            2'b11: y=x3; 
            default: y = x0;
        endcase
        
    end

endmodule
/*
module counter_2bit (
    input clk,
    output [1:0] count
);
    reg [1:0] counter = 0;
    assign count = counter;

    always @(posedge clk) begin
        if(counter == 3) begin
            counter <= 0;
        end
        else begin
            counter <= counter + 1;
        end
    end    
endmodule*/

module counter #(
    parameter MAX_COUNT = 4
) (
    input                           reset,
    input                           clk,
    output [$clog2(MAX_COUNT)-1:0]  count
);
    reg [$clog2(MAX_COUNT)-1:0] counter = 0;
    assign count = counter; 

    always @(posedge clk, posedge reset) begin
        if(reset == 1'b1)begin
            counter<=0;
        end else begin
            if(counter == (MAX_COUNT-1)) begin
                counter <= 0;
            end
            else begin
                counter <= counter + 1;
            end
        end
    end    
endmodule

module clkDiv #(parameter MAX_COUNT = 100)(
    input clk,
    input reset,
    output o_clk
);
    reg [$clog2(MAX_COUNT)-1:0] counter = 0; // log_2 100_000 = 16.xx -> clog2 = 17
    reg r_tick = 0;

    assign o_clk = r_tick;

    always @(posedge clk, posedge reset) begin
        if (reset) begin // reset == 1'b1
            counter <= 0;
        end else begin
            if (counter == (MAX_COUNT - 1))begin
                counter <= 0;
                r_tick <= 1'b1;
            end 
            else begin
                counter <= counter + 1;
                r_tick <= 1'b0;
            end
        end
    end
endmodule