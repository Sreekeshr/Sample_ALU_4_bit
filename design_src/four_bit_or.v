module four_bit_or(

    input [3:0] A_in,

    input [3:0] B_in,

    output [3:0] or_out

    );

    

    or g1(or_out[0],A_in[0],B_in[0]);

    or g2(or_out[1],A_in[1],B_in[1]);

    or g3(or_out[2],A_in[2],B_in[2]);

    or g4(or_out[3],A_in[3],B_in[3]);

endmodule