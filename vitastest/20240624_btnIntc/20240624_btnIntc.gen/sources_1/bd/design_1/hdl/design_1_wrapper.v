//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon Jun 24 13:38:16 2024
//Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (dip_switches_16bits_0_tri_io,
    dip_switches_16bits_tri_io,
    inBtn_0,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  inout [3:0]dip_switches_16bits_0_tri_io;
  inout [3:0]dip_switches_16bits_tri_io;
  input inBtn_0;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [0:0]dip_switches_16bits_0_tri_i_0;
  wire [1:1]dip_switches_16bits_0_tri_i_1;
  wire [2:2]dip_switches_16bits_0_tri_i_2;
  wire [3:3]dip_switches_16bits_0_tri_i_3;
  wire [0:0]dip_switches_16bits_0_tri_io_0;
  wire [1:1]dip_switches_16bits_0_tri_io_1;
  wire [2:2]dip_switches_16bits_0_tri_io_2;
  wire [3:3]dip_switches_16bits_0_tri_io_3;
  wire [0:0]dip_switches_16bits_0_tri_o_0;
  wire [1:1]dip_switches_16bits_0_tri_o_1;
  wire [2:2]dip_switches_16bits_0_tri_o_2;
  wire [3:3]dip_switches_16bits_0_tri_o_3;
  wire [0:0]dip_switches_16bits_0_tri_t_0;
  wire [1:1]dip_switches_16bits_0_tri_t_1;
  wire [2:2]dip_switches_16bits_0_tri_t_2;
  wire [3:3]dip_switches_16bits_0_tri_t_3;
  wire [0:0]dip_switches_16bits_tri_i_0;
  wire [1:1]dip_switches_16bits_tri_i_1;
  wire [2:2]dip_switches_16bits_tri_i_2;
  wire [3:3]dip_switches_16bits_tri_i_3;
  wire [0:0]dip_switches_16bits_tri_io_0;
  wire [1:1]dip_switches_16bits_tri_io_1;
  wire [2:2]dip_switches_16bits_tri_io_2;
  wire [3:3]dip_switches_16bits_tri_io_3;
  wire [0:0]dip_switches_16bits_tri_o_0;
  wire [1:1]dip_switches_16bits_tri_o_1;
  wire [2:2]dip_switches_16bits_tri_o_2;
  wire [3:3]dip_switches_16bits_tri_o_3;
  wire [0:0]dip_switches_16bits_tri_t_0;
  wire [1:1]dip_switches_16bits_tri_t_1;
  wire [2:2]dip_switches_16bits_tri_t_2;
  wire [3:3]dip_switches_16bits_tri_t_3;
  wire inBtn_0;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.dip_switches_16bits_0_tri_i({dip_switches_16bits_0_tri_i_3,dip_switches_16bits_0_tri_i_2,dip_switches_16bits_0_tri_i_1,dip_switches_16bits_0_tri_i_0}),
        .dip_switches_16bits_0_tri_o({dip_switches_16bits_0_tri_o_3,dip_switches_16bits_0_tri_o_2,dip_switches_16bits_0_tri_o_1,dip_switches_16bits_0_tri_o_0}),
        .dip_switches_16bits_0_tri_t({dip_switches_16bits_0_tri_t_3,dip_switches_16bits_0_tri_t_2,dip_switches_16bits_0_tri_t_1,dip_switches_16bits_0_tri_t_0}),
        .dip_switches_16bits_tri_i({dip_switches_16bits_tri_i_3,dip_switches_16bits_tri_i_2,dip_switches_16bits_tri_i_1,dip_switches_16bits_tri_i_0}),
        .dip_switches_16bits_tri_o({dip_switches_16bits_tri_o_3,dip_switches_16bits_tri_o_2,dip_switches_16bits_tri_o_1,dip_switches_16bits_tri_o_0}),
        .dip_switches_16bits_tri_t({dip_switches_16bits_tri_t_3,dip_switches_16bits_tri_t_2,dip_switches_16bits_tri_t_1,dip_switches_16bits_tri_t_0}),
        .inBtn_0(inBtn_0),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
  IOBUF dip_switches_16bits_0_tri_iobuf_0
       (.I(dip_switches_16bits_0_tri_o_0),
        .IO(dip_switches_16bits_0_tri_io[0]),
        .O(dip_switches_16bits_0_tri_i_0),
        .T(dip_switches_16bits_0_tri_t_0));
  IOBUF dip_switches_16bits_0_tri_iobuf_1
       (.I(dip_switches_16bits_0_tri_o_1),
        .IO(dip_switches_16bits_0_tri_io[1]),
        .O(dip_switches_16bits_0_tri_i_1),
        .T(dip_switches_16bits_0_tri_t_1));
  IOBUF dip_switches_16bits_0_tri_iobuf_2
       (.I(dip_switches_16bits_0_tri_o_2),
        .IO(dip_switches_16bits_0_tri_io[2]),
        .O(dip_switches_16bits_0_tri_i_2),
        .T(dip_switches_16bits_0_tri_t_2));
  IOBUF dip_switches_16bits_0_tri_iobuf_3
       (.I(dip_switches_16bits_0_tri_o_3),
        .IO(dip_switches_16bits_0_tri_io[3]),
        .O(dip_switches_16bits_0_tri_i_3),
        .T(dip_switches_16bits_0_tri_t_3));
  IOBUF dip_switches_16bits_tri_iobuf_0
       (.I(dip_switches_16bits_tri_o_0),
        .IO(dip_switches_16bits_tri_io[0]),
        .O(dip_switches_16bits_tri_i_0),
        .T(dip_switches_16bits_tri_t_0));
  IOBUF dip_switches_16bits_tri_iobuf_1
       (.I(dip_switches_16bits_tri_o_1),
        .IO(dip_switches_16bits_tri_io[1]),
        .O(dip_switches_16bits_tri_i_1),
        .T(dip_switches_16bits_tri_t_1));
  IOBUF dip_switches_16bits_tri_iobuf_2
       (.I(dip_switches_16bits_tri_o_2),
        .IO(dip_switches_16bits_tri_io[2]),
        .O(dip_switches_16bits_tri_i_2),
        .T(dip_switches_16bits_tri_t_2));
  IOBUF dip_switches_16bits_tri_iobuf_3
       (.I(dip_switches_16bits_tri_o_3),
        .IO(dip_switches_16bits_tri_io[3]),
        .O(dip_switches_16bits_tri_i_3),
        .T(dip_switches_16bits_tri_t_3));
endmodule
