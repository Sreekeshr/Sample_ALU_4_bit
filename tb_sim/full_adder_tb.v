`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2022 10:33:02 PM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
	reg [3:0]a;
	reg [3:0]b;
	wire [4:0]sum;
	
	four_bit_add u1(a,b,sum);
	initial begin
//		$dumpfile("four_bit_test.vcd");
//		$dumpvars(0);
		//$monitor("a=%b b=%b sum=%b c_out=%b",a,b,sum);
		a = 4'b0000;
		b = 4'b0001;
		#10;
		a = 4'b0000;
		b = 4'b0101;
		#10;
		a = 4'b1111;
		b = 4'b1111;
		#10;
	end
	endmodule