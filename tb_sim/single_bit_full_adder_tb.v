`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2022 06:28:18 PM
// Design Name: 
// Module Name: single_bit_full_adder_tb
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


module single_bit_full_adder_tb();

    reg a_in;
    reg b_in;
    reg c_in;
    wire sum;
    wire c_out;
    
    full_adder_samp u1(a_in,b_in,c_in,sum,c_out);
    
    initial begin
        a_in = 1'b0;b_in = 1'b0;c_in =1'b0; #5;
        a_in = 1'b0;b_in = 1'b0;c_in =1'b1; #5;
        a_in = 1'b0;b_in = 1'b1;c_in =1'b0; #5;
        a_in = 1'b0;b_in = 1'b1;c_in =1'b1; #5;
        a_in = 1'b1;b_in = 1'b0;c_in =1'b0; #5;
        a_in = 1'b1;b_in = 1'b0;c_in =1'b1; #5;
        a_in = 1'b1;b_in = 1'b1;c_in =1'b0; #5;
        a_in = 1'b1;b_in = 1'b1;c_in =1'b1; #5;


    
    end
    

endmodule
