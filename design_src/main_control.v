`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/03/2022 10:20:54 PM
// Design Name: 
// Module Name: main_control
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


module main_control(
    input [2:0] control_signal, //Control lines in alu are used to select the operations that is to be performed by alu
    input [3:0] A_in,
    input [3:0] B_in,
    input clk,
    input ok,
    input ack,
    output [8:0] out
    );
    
    reg [2:0]PS = 3'b000;
    wire [3:0]w3,w4,w5,w6;
    wire [3:0]w1;
    wire [8:0]w2;
    wire w7;
    reg [8:0]out_in = 9'b000000000;
    //module instantiations
    ripple_carry_adder_final add1(.a(A_in),.b(B_in),.sum(w1),.c_out(w7));
    
    multi_samp mul1(.A_in(A_in),.B_in(B_in),.Res(w2));
    
    four_bit_and and1(.A_in(A_in),.B_in(B_in),.and_out(w3));
    
    four_bit_or or1(.A_in(A_in),.B_in(B_in),.or_out(w4));
    
    four_bit_nor nor1(.A_in(A_in),.B_in(B_in),.nor_out(w5));
    
    four_bit_xor xor1(.A_in(A_in),.B_in(B_in),.xor_out(w6));
    
    assign out = out_in;
    always @(posedge clk)
         begin
         case(PS) 
            3'b000 : begin
                out_in <= 8'b0000_0000;
                PS <= control_signal;
            end
            3'b001 : begin 
                        if(ok == 1'b1) 
                            begin 
                            out_in[3:0]<= w1;
                            out_in[7:5] <= 3'b0;
                            out_in[8] <= w7;
                            PS <= 3'b111;
                             end
                         else
                            PS<= 3'b001;
                     end
            3'b010 :  begin 
                        if(ok == 1'b1) begin 
                            out_in <= w2;
                            PS <= 3'b111;
                             end
                         else
                            PS<= 3'b010;
                     end
            3'b011 : begin
                      if(ok == 1'b1) begin
                        out_in[3:0] <= w3;
                        out_in[8:4] <= 5'b0;
                        PS <= 3'b111;
                        end
                     else
                        PS<=3'b011;
                    end
                   
            3'b100 : begin
                        if(ok == 1'b1) begin
                            out_in[3:0] <= w4;
                            out_in[8:4] <= 5'b0;
                            PS <= 3'b111;
                        end
                        else
                            PS <= 3'b100;
                    end
            3'b101 : begin
                   out_in[3:0] <= w5;
                   out_in[8:4] <= 5'b0;
                    end
            3'b110 : begin
                        if(ok == 1'b1) begin
                            out_in[3:0] <= w6;
                            out_in[8:4] <= 5'b0;
                            PS <= 3'b111;
                        end
                        else
                            PS<= 3'b110;
                    end
            3'b111 : begin
                     if(ack == 1'b1)
                        PS <= 3'b000;
                     else
                        PS <= 3'b111;
                    end
            default : out_in <= 9'b0;
         
         
         endcase
         end
   
    
endmodule
