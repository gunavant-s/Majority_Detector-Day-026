`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 14.08.2023 11:44:11
// Design Name: 
// Module Name: tb_majority_detector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_majority_detector();
    reg a,b,c;
    wire y;
    majority_detector DUT(.a(a),
                          .b(b),
                          .c(c),
                          .y(y)
                          );
   
    initial begin
        a=0; b=0; c=0;
        #10 a=0; b=1; c=0;
        #10 a=1; b=0; c=0;
        #10 a=1; b=0; c=1;
        #10 a=1; b=1; c=1;
        #10 $stop;
    end
    
endmodule
