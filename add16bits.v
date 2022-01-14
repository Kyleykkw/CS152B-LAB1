`include "addbit.v"

module add16bits (a, b, s, overflow);

    input [15:0] a, b; // input 1, 2, and carry in
    output [15:0] s; // output and carry
    output overflow; 
    wire carry[15:0]; 

    addbit dig0 (a[0], b[0], 1'b0, carry[0], s[0]);
    addbit dig1 (a[1], b[1], carry[0], carry[1], s[1]);
    addbit dig2 (a[2], b[2], carry[1], carry[2], s[2]);
    addbit dig3 (a[3], b[3], carry[2], carry[3], s[3]);
    addbit dig4 (a[4], b[4], carry[3], carry[4], s[4]);
    addbit dig5 (a[5], b[5], carry[4], carry[5], s[5]);
    addbit dig6 (a[6], b[6], carry[5], carry[6], s[6]);
    addbit dig7 (a[7], b[7], carry[6], carry[7], s[7]);
    addbit dig8 (a[8], b[8], carry[7], carry[8], s[8]);
    addbit dig9 (a[9], b[9], carry[8], carry[9], s[9]);
    addbit dig10 (a[10], b[10], carry[9], carry[10], s[10]);
    addbit dig11 (a[11], b[11], carry[10], carry[11], s[11]);
    addbit dig12 (a[12], b[12], carry[11], carry[12], s[12]);
    addbit dig13 (a[13], b[13], carry[12], carry[13], s[13]);
    addbit dig14 (a[14], b[14], carry[13], carry[14], s[14]);
    addbit dig15 (a[15], b[15], carry[14], carry[15], s[15]);

    xor(overflow, carry[14], carry[15]);

endmodule