`timescale 1ns / 1ps

module InstructionMemory (
    input  logic [31:0] addr,
    output logic [31:0] data
);

    logic [31:0] rom[0:63];

    initial begin
        //R-Type
        rom[0] = 32'h00520333; // ADD x6, x4, x5 => 9
        rom[1] = 32'h405083b3; // SUB x7, x1, x5 => -4
        rom[2] = 32'h00329433; // SLL x8, x5, x3 => 40
        rom[3] = 32'h003354B3; // SRL x9, x6, x3 => 1
        rom[4] = 32'h4033D533; // SRA x10, x7, x3 => -1
        rom[5] = 32'h003125B3; //SLT x11, x2, x3 => 1
        rom[6] = 32'h0063B633; //SLTU x12, x7, x2 => 1
        rom[7] = 32'h0020C6B3; //XOR x13, x1, x2 => 3
        rom[8] = 32'h00526733; //OR x14, x4, x5 =>  5
        rom[9] = 32'h005277B3; // AND x15, x4, x5 => 4
        //IL-Type
        rom[10] = 32'h00200803; // lb x16, x0,2 => regFile[16] = 85
        rom[11] = 32'h00201803; // lh x16, x0, 2 => regFile[16] = 4294939733
        rom[12] = 32'h00204803; // lbu x16, x0, 2 => regFile[16] = 85
        rom[13] = 32'h00205803; // lhu x16, x0, 2 => regFile[16] = 37,973
        rom[14] = 32'h00202803; // lw x16, x0, 2 => regFile[16] = 357667925
        //I-Type
        rom[15] = 32'h00520893; // ADDI x17, x4, 5 => 9
        rom[16] = 32'h00362913; // SLTI x18, x2, 3 => 1
        rom[17] = 32'h0023B993; // SLTIU x19, x7, 2 => 1
        rom[18] = 32'h0020CA13; //XORI x20, x1, 2 => 3
        rom[19] = 32'h00526A93; // ORI x21, x4, 5 => 5 
        rom[20] = 32'h00527B13; // ANDI x22, x4, 5 => 4
        rom[21] = 32'h00329B93; // SLLI x23, x5, 3 => 40
        rom[22] = 32'h00335C13; // SRLI x24, x6, 3 => 1
        rom[23] = 32'h4033DC93; // SRAI x25, x7, 3 => -1
       // S-Type
       rom[24] = 32'h01000223; //sb x0, 4, x16 => RAM[1] = 85
       rom[25] = 32'h01001223; //sh x0, 4, x16 => RAM[1] = 37,973
       rom[26] = 32'h01002223; //sw x0, 4, x16 => RAM[1] = 357667925
       //B-Type
       rom[27] = 32'h00209463; //BEQ x1, x1, 8 => (True) PC = PC+8
       rom[29] = 32'h00209463; // BNE x1, x2, 8 => (True) PC = PC+8
       rom[31] = 32'h0020C463; //BLT x1, x2, 8 => (True) PC = PC+8
       rom[33] = 32'h00325463; //BGE x4, x3, 8 => (True) PC = PC+8
       rom[35] = 32'h0020E463; // BLTU x1, x2, 8 => (True) PC = PC+8
       rom[37] = 32'h00327463; // BGEU x4, x3, 8 => (True) PC = PC+8
       //U-Type 
       rom[39] = 32'h00005D37; // LUI x26, 5 => x26  = 20480
       //UA- Type
       rom[40] = 32'h00005D97; // AUIPC x27, 5 => x27 = PC+(5<<12)
       //J-Type
       rom[41] = 32'h00800E6F; // JAL x28, 8 => x28 = PC+4; PC = PC + 8
       //JI-Type 
       //rom[43] = 32'h00820EE7; // JALR x29, x4, 8 => x29 = PC+4; PC = PC+4+8;
    end
    assign data = rom[addr[31:2]];
endmodule
