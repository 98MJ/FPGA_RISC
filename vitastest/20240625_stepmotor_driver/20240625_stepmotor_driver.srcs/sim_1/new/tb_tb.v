`timescale 1ns / 1ps

module tb_tb();
    logic  nreset;
    logic  step; 
    logic  dir;
    logic  a1;
    logic  a2;
    logic  b1;
    logic  b2;       
        
    stepDrv dut(
       .nreset(nreset),
       .step(step), 
       .dir(dir),
 //   input  nfault,
       .a1(a1),
       .a2(a2),
       .b1(b1),
       .b2(b2)        
    );  
     
    always #5  step = ~step;

endmodule
