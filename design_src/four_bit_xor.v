module four_bit_xor(

    input [3:0] A_in,

    input [3:0] B_in,

    output [3:0] xor_out

    );

    

    xor g1(xor_out[0],A_in[0],B_in[0]);

    xor g2(xor_out[1],A_in[1],B_in[1]);

    xor g3(xor_out[2],A_in[2],B_in[2]);

    xor g4(xor_out[3],A_in[3],B_in[3]);

endmodule