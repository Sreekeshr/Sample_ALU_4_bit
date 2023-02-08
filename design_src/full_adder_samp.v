`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2022 10:20:54 PM
// Design Name: 
// Module Name: full_adder_samp
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


module full_adder_samp(
    input a_in,
    input b_in,
    input c_in,
    output sum,
    output c_out
    );
    wire w1,w2,w3;
    
    assign sum = a_in^b_in^c_in;
    assign c_out = ((a_in^b_in)&c_in)|(a_in&b_in);
    
    
endmodule
