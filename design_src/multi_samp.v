`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2022 10:20:54 PM
// Design Name: 
// Module Name: multi_samp
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

module multi_samp(
  input [3:0]A_in,
  input [3:0]B_in,
  output [8:0]Res);// Res has MSB as its overflow
  
  wire [3:0]partial_sum1;
  wire [4:0]partial_sum2;
  wire [5:0]partial_sum3;
  wire [6:0]partial_sum4;
  
  wire [8:0]s1,s2,s3 ;
  
  assign partial_sum1 = {4{A_in[0]}} & B_in[3:0];
  assign partial_sum2 = {4{A_in[1]}} & B_in[3:0];
  assign partial_sum3 = {4{A_in[2]}} & B_in[3:0];
  assign partial_sum4 = {4{A_in[3]}} & B_in[3:0];
  
  wire c1,c2,c3;
  assign s1 = partial_sum1 + (partial_sum2<<1);
  assign s2 = s1 + (partial_sum3<<2);
  assign s3 = s2 + (partial_sum4<<3);
  assign Res = s3;
  
  
  
endmodule