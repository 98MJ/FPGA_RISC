`timescale 1ns/1ps

module ControlUnit (
    input  logic [6:0]  op, //tpye select
    input  logic [2:0]  func3,
    input  logic [6:0]  func7,
    output logic        regFilewe,
    output logic        ALUSrcMuxSel,
    output logic        RFWDSrcMuxSel,
    output logic        dataMemWe,
    output logic [2:0]  aluControl 
);
    logic [5:0] controls;
    logic [1:0] w_Aluop;
    assign {regFilewe, ALUSrcMuxSel, RFWDSrcMuxSel, dataMemWe, w_Aluop} = controls;
    always_comb begin 
        case (op)
            7'b0110011: controls = 6'b100010; // R-type
            7'b0000011: controls = 6'b111000; // IL-type
            7'b0010011: controls = 6'b0; // I-type 
            7'b0100011: controls = 6'b0; // S-type
            7'b1100011: controls = 6'b0; // B-type
            7'b0110111: controls = 6'b0; // LUI-type
            7'b0010111: controls = 6'b0; // AUIPC-type
            7'b1101111: controls = 6'b0; // J-type
            7'b1100111: controls = 6'b0; // JI-Type
            default: controls = 6'b000;
        endcase
    end

    always_comb begin 
        case (w_Aluop)
            2'b00: aluControl = 3'b000; // add
            2'b01: aluControl = 3'b001; // sum
            default begin
                case (func3)
                    3'b000: begin
                        if(func7[5] & op[5]) aluControl = 3'b001; // sub 
                        else aluControl = 3'b000; // add
                    end
                    3'b010: aluControl = 3'b000; // slt
                    3'b110: aluControl = 3'b011; // or
                    3'b111: aluControl = 3'b010; //and
                    default: aluControl = 3'bx;
                endcase
            end
        endcase
    end
endmodule