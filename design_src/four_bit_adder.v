`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2022 10:35:32 PM
// Design Name: 
// Module Name: four_bit_adder
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


module four_bit_adder(
    input [3:0] A_in,
    input [3:0] B_in,
    input C_in,
    output [3:0] sum,
    output c_out
    );
    
    wire w1,w2,w3,w4;
    full_adder_samp v1(A_in[0],B_in[0],C_in,sum[0],w1);
    full_adder_samp v2(A_in[1],B_in[1],w1,sum[1],w2);
    full_adder_samp v3(A_in[2],B_in[2],w2,sum[2],w3);
    full_adder_samp v4(A_in[3],B_in[2],w3,sum[3],c_out);
    
endmodule
