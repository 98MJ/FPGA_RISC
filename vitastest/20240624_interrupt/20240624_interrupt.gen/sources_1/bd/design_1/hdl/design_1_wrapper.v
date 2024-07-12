//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Mon Jun 24 13:42:17 2024
//Host        : DESKTOP-7CFQ9ND running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (inBtn,
    led_tri_io,
    reset,
    sw_tri_io,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input inBtn;
  inout [3:0]led_tri_io;
  input reset;
  inout [3:0]sw_tri_io;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire inBtn;
  wire [0:0]led_tri_i_0;
  wire [1:1]led_tri_i_1;
  wire [2:2]led_tri_i_2;
  wire [3:3]led_tri_i_3;
  wire [0:0]led_tri_io_0;
  wire [1:1]led_tri_io_1;
  wire [2:2]led_tri_io_2;
  wire [3:3]led_tri_io_3;
  wire [0:0]led_tri_o_0;
  wire [1:1]led_tri_o_1;
  wire [2:2]led_tri_o_2;
  wire [3:3]led_tri_o_3;
  wire [0:0]led_tri_t_0;
  wire [1:1]led_tri_t_1;
  wire [2:2]led_tri_t_2;
  wire [3:3]led_tri_t_3;
  wire reset;
  wire [0:0]sw_tri_i_0;
  wire [1:1]sw_tri_i_1;
  wire [2:2]sw_tri_i_2;
  wire [3:3]sw_tri_i_3;
  wire [0:0]sw_tri_io_0;
  wire [1:1]sw_tri_io_1;
  wire [2:2]sw_tri_io_2;
  wire [3:3]sw_tri_io_3;
  wire [0:0]sw_tri_o_0;
  wire [1:1]sw_tri_o_1;
  wire [2:2]sw_tri_o_2;
  wire [3:3]sw_tri_o_3;
  wire [0:0]sw_tri_t_0;
  wire [1:1]sw_tri_t_1;
  wire [2:2]sw_tri_t_2;
  wire [3:3]sw_tri_t_3;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  design_1 design_1_i
       (.inBtn(inBtn),
        .led_tri_i({led_tri_i_3,led_tri_i_2,led_tri_i_1,led_tri_i_0}),
        .led_tri_o({led_tri_o_3,led_tri_o_2,led_tri_o_1,led_tri_o_0}),
        .led_tri_t({led_tri_t_3,led_tri_t_2,led_tri_t_1,led_tri_t_0}),
        .reset(reset),
        .sw_tri_i({sw_tri_i_3,sw_tri_i_2,sw_tri_i_1,sw_tri_i_0}),
        .sw_tri_o({sw_tri_o_3,sw_tri_o_2,sw_tri_o_1,sw_tri_o_0}),
        .sw_tri_t({sw_tri_t_3,sw_tri_t_2,sw_tri_t_1,sw_tri_t_0}),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
  IOBUF led_tri_iobuf_0
       (.I(led_tri_o_0),
        .IO(led_tri_io[0]),
        .O(led_tri_i_0),
        .T(led_tri_t_0));
  IOBUF led_tri_iobuf_1
       (.I(led_tri_o_1),
        .IO(led_tri_io[1]),
        .O(led_tri_i_1),
        .T(led_tri_t_1));
  IOBUF led_tri_iobuf_2
       (.I(led_tri_o_2),
        .IO(led_tri_io[2]),
        .O(led_tri_i_2),
        .T(led_tri_t_2));
  IOBUF led_tri_iobuf_3
       (.I(led_tri_o_3),
        .IO(led_tri_io[3]),
        .O(led_tri_i_3),
        .T(led_tri_t_3));
  IOBUF sw_tri_iobuf_0
       (.I(sw_tri_o_0),
        .IO(sw_tri_io[0]),
        .O(sw_tri_i_0),
        .T(sw_tri_t_0));
  IOBUF sw_tri_iobuf_1
       (.I(sw_tri_o_1),
        .IO(sw_tri_io[1]),
        .O(sw_tri_i_1),
        .T(sw_tri_t_1));
  IOBUF sw_tri_iobuf_2
       (.I(sw_tri_o_2),
        .IO(sw_tri_io[2]),
        .O(sw_tri_i_2),
        .T(sw_tri_t_2));
  IOBUF sw_tri_iobuf_3
       (.I(sw_tri_o_3),
        .IO(sw_tri_io[3]),
        .O(sw_tri_i_3),
        .T(sw_tri_t_3));
endmodule
