`include "mux_16_to_1.v"

// 
module mux_16x16_to_16(out, In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, S);
    output [15:0] out; // output
    input [15:0] In0; // input data
    input [15:0] In1; 
    input [15:0] In2; 
    input [15:0] In3; 
    input [15:0] In4; 
    input [15:0] In5; 
    input [15:0] In6; 
    input [15:0] In7; 
    input [15:0] In8; 
    input [15:0] In9; 
    input [15:0] In10; 
    input [15:0] In11; 
    input [15:0] In12; 
    input [15:0] In13; 
    input [15:0] In14; 
    input [15:0] In15; 
    input [3:0] S; 

    mux_16_to_1 mux0 (out[0], In0[0], In1[0], In2[0], In3[0], In4[0], In5[0], In6[0], In7[0], In8[0], In9[0], In10[0], In11[0], In12[0], In13[0], In14[0], In15[0], S);
    mux_16_to_1 mux1 (out[1], In0[1], In1[1], In2[1], In3[1], In4[1], In5[1], In6[1], In7[1], In8[1], In9[1], In10[1], In11[1], In12[1], In13[1], In14[1], In15[1], S);
    mux_16_to_1 mux2 (out[2], In0[2], In1[2], In2[2], In3[2], In4[2], In5[2], In6[2], In7[2], In8[2], In9[2], In10[2], In11[2], In12[2], In13[2], In14[2], In15[2], S);
    mux_16_to_1 mux3 (out[3], In0[3], In1[3], In2[3], In3[3], In4[3], In5[3], In6[3], In7[3], In8[3], In9[3], In10[3], In11[3], In12[3], In13[3], In14[3], In15[3], S);
    mux_16_to_1 mux4 (out[4], In0[4], In1[4], In2[4], In3[4], In4[4], In5[4], In6[4], In7[4], In8[4], In9[4], In10[4], In11[4], In12[4], In13[4], In14[4], In15[4], S);
    mux_16_to_1 mux5 (out[5], In0[5], In1[5], In2[5], In3[5], In4[5], In5[5], In6[5], In7[5], In8[5], In9[5], In10[5], In11[5], In12[5], In13[5], In14[5], In15[5], S);
    mux_16_to_1 mux6 (out[6], In0[6], In1[6], In2[6], In3[6], In4[6], In5[6], In6[6], In7[6], In8[6], In9[6], In10[6], In11[6], In12[6], In13[6], In14[6], In15[6], S);
    mux_16_to_1 mux7 (out[7], In0[7], In1[7], In2[7], In3[7], In4[7], In5[7], In6[7], In7[7], In8[7], In9[7], In10[7], In11[7], In12[7], In13[7], In14[7], In15[7], S);
    mux_16_to_1 mux8 (out[8], In0[8], In1[8], In2[8], In3[8], In4[8], In5[8], In6[8], In7[8], In8[8], In9[8], In10[8], In11[8], In12[8], In13[8], In14[8], In15[8], S);
    mux_16_to_1 mux9 (out[9], In0[9], In1[9], In2[9], In3[9], In4[9], In5[9], In6[9], In7[9], In8[9], In9[9], In10[9], In11[9], In12[9], In13[9], In14[9], In15[9], S);
    mux_16_to_1 mux10 (out[10], In0[10], In1[10], In2[10], In3[10], In4[10], In5[10], In6[10], In7[10], In8[10], In9[10], In10[10], In11[10], In12[10], In13[10], In14[10], In15[10], S);
    mux_16_to_1 mux11 (out[11], In0[11], In1[11], In2[11], In3[11], In4[11], In5[11], In6[11], In7[11], In8[11], In9[11], In10[11], In11[11], In12[11], In13[11], In14[11], In15[11], S);
    mux_16_to_1 mux12 (out[12], In0[12], In1[12], In2[12], In3[12], In4[12], In5[12], In6[12], In7[12], In8[12], In9[12], In10[12], In11[12], In12[12], In13[12], In14[12], In15[12], S);
    mux_16_to_1 mux13 (out[13], In0[13], In1[13], In2[13], In3[13], In4[13], In5[13], In6[13], In7[13], In8[13], In9[13], In10[13], In11[13], In12[13], In13[13], In14[13], In15[13], S);
    mux_16_to_1 mux14 (out[14], In0[14], In1[14], In2[14], In3[14], In4[14], In5[14], In6[14], In7[14], In8[14], In9[14], In10[14], In11[14], In12[14], In13[14], In14[14], In15[14], S);
    mux_16_to_1 mux15 (out[15], In0[15], In1[15], In2[15], In3[15], In4[15], In5[15], In6[15], In7[15], In8[15], In9[15], In10[15], In11[15], In12[15], In13[15], In14[15], In15[15], S);

endmodule