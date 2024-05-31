`timescale 1ns/1ps
`include "defines.sv"

module ControlUnit (
    input  logic [6:0]  op, //tpye select
    input  logic [2:0]  func3,
    input  logic [6:0]  func7,
    output logic        regFilewe,
    output logic        ALUSrcMuxSel,
    output logic [1:0]       RFWDSrcMuxSel,
    output logic        dataMemWe,
    output logic [3:0]  aluControl,
    output logic [2:0]  extType,
    output logic        branch
);
    logic [8:0] controls;
    logic [1:0] w_Aluop;
    assign {regFilewe, ALUSrcMuxSel, RFWDSrcMuxSel, dataMemWe, extType, branch} = controls;
    
    always_comb begin : main_decoder
        case (op)
            `OP_TYPE_R : controls = 9'b1_0_00_xxx_0; // R-type
            `OP_TYPE_IL: controls = 9'b1_1_10_000_0; // IL-type
            `OP_TYPE_I:  controls = 9'b1_1_00_000_0; // I-type 
            `OP_TYPE_S:  controls = 9'b0_1_x1_000_0; // S-type Store
            `OP_TYPE_B:  controls = 9'b0_0_x0_010_1; // B-type
            `OP_TYPE_J:  controls = 9'b0_0_ // LUI-type
            `OP_TYPE_JI: controls = 9'b0_0_ // AUIPC-type
            `OP_TYPE_U:  controls = 9'b0_0_ // J-type
            `OP_TYPE_UA: controls = 9'b0_0_ // JI-Type
            default:     controls = 9'bx_0_
        endcase
    end

    always_comb begin : ALU_Control_signal
        case (op)
            `OP_TYPE_R  : aluControl = {func7[5], func3};
            `OP_TYPE_IL : aluControl = {1'b0, 3'b000};
            `OP_TYPE_I  : aluControl = {func7[5], func3};
            `OP_TYPE_S  : aluControl = {1'b0, 3'b000};
            `OP_TYPE_B  : aluControl = {1'b0, func3};
            `OP_TYPE_J  : aluControl = {1'b0, func3};
            `OP_TYPE_JI : aluControl = {1'b0, func3};
            `OP_TYPE_U  : aluControl = {1'b0, func3};
            `OP_TYPE_UA : aluControl = {1'b0, func3};
            default     : aluControl = 4'bx;
            
          endcase
    end
endmodule