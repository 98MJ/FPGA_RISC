`timescale 1ns / 1ps

module stepDrv(
    input  nreset,
    input  step, 
    input  dir,
 //   input  nfault,
    output reg a1,
    output reg a2,
    output reg b1,
    output reg b2        
    );  
    always @(posedge step) begin
        if (nreset) begin
            a1 <= 0;
            a2 <= 0;
            b1 <= 0;
            b2 <= 0; 
        end else begin
            if(dir)begin
                a1 <= step;  
                a2 <= ~a2;  
                b1 <= ~step;  
                b2 <= a2 ^ b1;  
            end else begin
                a1 <= step;  
                a2 <= ~a2;  
                b1 <= ~dir;  
                b2 <= a2 ^ b1;  
            end      
        end
    end


endmodule          
                   