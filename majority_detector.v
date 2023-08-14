`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 14.08.2023 11:23:51
// Design Name: 
// Module Name: majority_detector
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


module majority_detector(input a,
                         input b,
                         input c,
                         output y);
       
       // structural
       wire l1, l2, l3;
       nand(l1, a, b);
       nand(l2, b, c);
       nand(l3, a, c);
       assign y = ~((l1)|(l2)|(l3));
       
endmodule
