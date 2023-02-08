`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2022 10:24:17 PM
// Design Name: 
// Module Name: multiplier_sam
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


module multiplier_sam(
    input [2:0] A_in,
    input [3:0] B_in,
    output [6:0] P
    );
    
    wire [3:0]w1,w2,w3;
    
    and p0(w1[0],A_in[0],B_in[0]);
    and p1(w1[1],A_in[0],B_in[1]);
    and p2(w1[2],A_in[0],B_in[2]);
    assign w1[3] = 1'b0;
    assign P[0]=w1[0];
    
    and q0(w2[0],A_in[1],B_in[0]);
    and q1(w2[1],A_in[1],B_in[1]);
    and q2(w2[2],A_in[1],B_in[2]);
    and q3(w2[3],A_in[1],B_in[3]);
    assign c_in = 1'b0;
    wire[3:0] s_1,s_2,s_3;
    wire c_o1,c_o2;
    
    four_bit_add(w1,w2,c_in,s_1,c_o1);
    
    assign P[1]= s_1[0];
    and r0(w3[0],A_in[2],B_in[0]);
    and r1(w3[1],A_in[2],B_in[1]);
    and r2(w3[2],A_in[2],B_in[2]);
    and r3(w3[3],A_in[2],B_in[3]);

    assign s_2 = {c_o1,s_1[3:1]};
    
    four_bit_add(w3,s_2,c_in,s_3,c_o2);
    assign P[6:2]={c_o2,s_3};
       
endmodule
