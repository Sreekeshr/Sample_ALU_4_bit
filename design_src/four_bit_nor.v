`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2022 11:59:02 PM
// Design Name: 
// Module Name: four_bit_nor
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


module four_bit_nor(
    input [3:0] A_in,
    input [3:0] B_in,
    output [3:0] nor_out);
    
    nor g1(nor_out[0],A_in[0],B_in[0]);

    nor g2(nor_out[1],A_in[1],B_in[1]);

    nor g3(nor_out[2],A_in[2],B_in[2]);

    nor g4(nor_out[3],A_in[3],B_in[3]);
    
endmodule
