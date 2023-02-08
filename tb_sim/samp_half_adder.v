`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2022 06:40:36 PM
// Design Name: 
// Module Name: samp_half_adder
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


module samp_half_adder();



reg a_in,b_in;
wire sum,carry;

half_adder u1(a_in,b_in,sum,carry);


initial
     begin
        a_in = 1'b0;b_in = 1'b0;#25;
        a_in = 1'b0;b_in = 1'b1;#25;
        a_in = 1'b1;b_in = 1'b0;#25;
        a_in = 1'b1;b_in = 1'b1;#25;
    
    end
        
endmodule
