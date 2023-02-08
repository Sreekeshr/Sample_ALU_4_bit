`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/13/2022 02:35:06 PM
// Design Name: 
// Module Name: multi_samp_tb
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


module multi_samp_tb();

  reg [3:0]A,B;
  wire [8:0]P;
  
  multi_samp uut (.A_in(A),.B_in(B),.Res(P));
  
  initial begin
    $monitor("A = %b,B = %b,P = %b,Overflow = %b",A,B,P[7:0],P[8]); 
    A = 4'b0000;
    B = 4'b0001;
    #50;
    A = 4'b1111;
    B = 4'b0001;
    #50;
    end


endmodule
