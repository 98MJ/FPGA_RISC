`timescale 1ns / 1ps
`include "defines.sv"

module DataPath(
    input  logic        clk,
    input  logic        reset,
    input  logic [31:0] machineCode,
    input  logic        regFilewe,
    input  logic        ALUSrcMuxSel,
    input  logic        RFWDSrcMuxSel,
    input  logic [3:0]  aluControl,
    input  logic [2:0]  extType,
    output logic [31:0] instrMemRAddr,
    output logic [31:0] dataMemRAddr,
    output logic [31:0] dataMemWD,
    input  logic [31:0] dataMemRD,
    input  logic        branch
    //input  logic        btaken
    );
    logic [31:0] w_ALUResult, w_RegFileRData1, w_RegFileRData2, w_PC_Data;
    logic [31:0] w_ALUSrcMuxOut, w_extendOut, w_RFWDSrcMuxOut, w_PCAdderSrcMuxOut;
    logic        w_btaken, w_PCAdderSrcMuxSel;

    assign dataMemRAddr = w_ALUResult;
    assign dataMemWD = w_RegFileRData2;
    

    RegisterFile U_RegisterFile (
        .clk(clk),
        .we(regFilewe),
        .raddr1(machineCode[19:15]),
        .raddr2(machineCode[24:20]),
        .waddr(machineCode[11:7]),
        .wdata(w_RFWDSrcMuxOut),
        .rdata1(w_RegFileRData1),
        .rdata2(w_RegFileRData2)
    );

    mux_2x1 U_ALUSrcMux(
        .sel(ALUSrcMuxSel),
        .a(w_RegFileRData2),
        .b(w_extendOut),
        .y(w_ALUSrcMuxOut)
    );

    extend U_Extend(
        .extType(extType),
        .instr(machineCode[31:7]),
        .immext(w_extendOut)
    );

    ALU U_ALU(
        .a(w_RegFileRData1), 
        .b(w_ALUSrcMuxOut),
        .aluControl(aluControl),
        .result(w_ALUResult),
        .btaken(w_btaken)
    );

    mux_2x1 U_RFWDSrcMux(
        .sel(RFWDSrcMuxSel),
        .a(w_ALUResult),
        .b(dataMemRD),
        .y(w_RFWDSrcMuxOut)
    );

    Register U_PC (
        .clk(clk),
        .reset(reset),
        .d(w_PC_Data),
        .q(instrMemRAddr)
    );
    assign w_PCAdderSrcMuxSel = branch & w_btaken;
    mux_2x1 U_PCAdderSrcMux(
        .sel(w_PCAdderSrcMuxSel),
        .a(32'd4),
        .b(w_extendOut),
        .y(w_PCAdderSrcMuxOut)
    );
    adder U_Adder_PC(
        .a(instrMemRAddr),
        .b(w_PCAdderSrcMuxOut),
        .y(w_PC_Data)
    );
endmodule

module RegisterFile (
    input  logic         clk,
    input  logic         we,
    input  logic [4:0]   raddr1,
    input  logic [4:0]   raddr2,
    input  logic [4:0]   waddr,
    input  logic [31:0]  wdata,
    output logic [31:0]  rdata1,
    output logic [31:0]  rdata2
);
    logic [31:0] RegFile [0:31];

    initial begin
        RegFile[0] = 32'd0;
        RegFile[1] = 32'd1;
        RegFile[2] = 32'd2;
        RegFile[3] = 32'd3;
        RegFile[4] = 32'd4;
        RegFile[5] = 32'd5;
    end

    always_ff @( posedge clk ) begin   
        if (we) RegFile[waddr] <= wdata;
    end
    
    assign rdata1 = (raddr1 != 0) ? RegFile[raddr1] : 0;
    assign rdata2 = (raddr2 != 0) ? RegFile[raddr2] : 0;    
endmodule

module Register (
    input  logic         clk,
    input  logic         reset,
    input  logic [31:0]  d,
    output logic [31:0]  q
);
    always_ff @( posedge clk, posedge reset ) begin 
        if (reset) begin
            q <= 0;
        end else begin
            q <= d;
        end
    end
endmodule

module ALU (
    input logic [31:0]  a, 
    input logic [31:0]  b,
    input logic [3:0]   aluControl,
    output logic        btaken,
    output logic [31:0] result
);
    always_comb begin
        case (aluControl)
            `ADD:   result = a + b;
            `SUB:   result = a - b;
            `SLL:   result = a << b;
            `SRL:   result = a >> b;
            `SRA:   result = a >>> b;
            `SLT:   result = (a < b) ? 1 : 0;
            `SLTU:  result = (a < b) ? 1 : 0;
            `XOR:   result = a ^ b;
            `AND:   result = a & b;
            `OR:    result = a | b;
            default: result = 32'bx;
        endcase
    end

    always_comb begin : comparator
        case (aluControl[2:0]) 
            3'b000: btaken = (a == b); // BEQ 
            3'b001: btaken = (a != b); // BNE 
            3'b100: btaken = (a <  b); // BLT
            3'b101: btaken = (a >= b); // BGE 
            3'b110: btaken = (a <  b); // BLTU 
            3'b111: btaken = (a >= b); // BGEU
            default: btaken = 1'bx;
        endcase        
    end
endmodule

module adder (
    input  logic [31:0] a,
    input  logic [31:0] b,
    output logic [31:0] y

);
    assign y = a + b;
    
endmodule

module extend (
    input  logic [31:7] instr,
    input  logic [2:0]  extType,
    output logic [31:0] immext
);
    always_comb begin 
        case(extType)
            3'b000: immext = {{21{instr[31]}}, instr[30:20]}; // I
            3'b001: immext = {{21{instr[31]}}, instr[30:25], instr[11:7]}; // S
            3'b010: immext = {{20{instr[31]}}, instr[7],instr[30:25],instr[11:8], 1'b0}; // B
            3'b011: immext = {{instr[31]}, instr[30:20],instr[19:12],{12{1'b0}}}; // U
            3'b100: immext = {{12{instr[31]}},instr[19:12],instr[20], instr[30:21],1'b0}; // J
        endcase
        
    end
    //assign immext = {{20{instr[31]}}, instr[31:20]}; //MSB값 갯수만큼 확장
    //2의 보수 원리`
endmodule

module mux_2x1(
    input  logic        sel,
    input  logic [31:0] a,
    input  logic [31:0] b,
    output logic [31:0] y
);
    always_comb begin 
        case (sel)
            1'b0: y = a;
            1'b1: y = b;
        endcase
    end

endmodule