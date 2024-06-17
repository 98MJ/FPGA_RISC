`timescale 1ns/1ps
`include "defines.sv"

module ControlUnit (
    input  logic [6:0]  op, //tpye select
    input  logic [2:0]  func3,
    input  logic [6:0]  func7,
    input  logic [6:0]  imm,
    output logic        regFilewe,
    output logic        ALUSrcMuxSel,
    output logic [2:0]  RFWDSrcMuxSel,
    output logic        dataMemWe,
    output logic [3:0]  aluControl,
    output logic [2:0]  extType,
    output logic        branch,
    output logic        PCSrcMuxSel,
    output logic        rsPCMuxSel
);
    logic [11:0] controls;
    logic [1:0] w_Aluop;
    assign {regFilewe, ALUSrcMuxSel, RFWDSrcMuxSel, dataMemWe, extType, branch, PCSrcMuxSel, rsPCMuxSel} = controls;
    
    always_comb begin : main_decoder
        case (op)
            `OP_TYPE_R : controls = 12'b1_0_000_0_xxx_0_0_x; // R-type
            `OP_TYPE_IL: controls = 12'b1_1_001_0_000_0_0_x; // IL-type
            `OP_TYPE_I:  begin
                if({func7[5], func3} == 4'b1101) controls = 12'b1_1_000_0_100_0_0_x;
                else controls = 12'b1_1_000_0_000_0_0_x; // I-type 
            end
            `OP_TYPE_S:  controls = 12'b0_1_xxx_1_001_0_0_x; // S-type Store
            `OP_TYPE_B:  controls = 12'b0_0_xxx_0_010_1_0_x; // B-type
            `OP_TYPE_J:  controls = 12'b1_x_100_0_101_0_1_1; // J-type
            `OP_TYPE_JI: controls = 12'b1_x_100_0_000_0_1_0; // JI-type
            `OP_TYPE_U:  controls = 12'b1_x_010_0_011_0_0_x; // U-type
            `OP_TYPE_UA: controls = 12'b1_x_011_0_011_0_0_1; // UA-Type
            default:     controls = 12'bx;
        endcase
    end

    always_comb begin : ALU_Control_signal
        case (op)
            `OP_TYPE_R  : aluControl = {func7[5], func3};
            `OP_TYPE_IL : aluControl = {1'b0, 3'b000};
            `OP_TYPE_I  : begin
               if({func7[5], func3} == 4'b1101) aluControl = {func7[5], func3};
               else aluControl = {1'b0, func3};
            end
            //`OP_TYPE_IS : aluControl = {imm[5], func3};   
            `OP_TYPE_S  : aluControl = {1'b0, 3'b000};
            `OP_TYPE_B  : aluControl = {1'b0, func3};
            //`OP_TYPE_J  : aluControl = {1'b0, func3};
            `OP_TYPE_JI : aluControl = {1'b0, 3'b000};
            `OP_TYPE_U  : aluControl = {1'b0, func3};
            `OP_TYPE_UA : aluControl = {1'b0, func3};
            default     : aluControl = 4'bx;
            
          endcase
    end
endmodule