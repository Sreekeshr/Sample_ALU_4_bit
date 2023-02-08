`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2022 11:59:02 PM
// Design Name: 
// Module Name: four_bit_and
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


module four_bit_and(
    input [3:0] A_in,
    input [3:0] B_in,
    output [3:0] and_out
    );
    
    and g1(and_out[0],A_in[0],B_in[0]);

    and g2(and_out[1],A_in[1],B_in[1]);

    and g3(and_out[2],A_in[2],B_in[2]);

    and g4(and_out[3],A_in[3],B_in[3]);

endmodule
