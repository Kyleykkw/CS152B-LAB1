`include "mux_4_to_1.v"

// 
module mux_16_to_1(out, In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, S);
    output out; 
    input In0; // input data
    input In1; 
    input In2; 
    input In3; 
    input In4; 
    input In5; 
    input In6; 
    input In7; 
    input In8; 
    input In9; 
    input In10; 
    input In11; 
    input In12; 
    input In13; 
    input In14; 
    input In15; 
    input [3:0] S;
    
    wire a, b, c, d;
    
    mux_4_to_1 mux0 (a, In0, In1, In2, In3, S[0], S[1]);
    mux_4_to_1 mux1 (b, In4, In5, In6, In7, S[0], S[1]);
    mux_4_to_1 mux2 (c, In8, In9, In10, In11, S[0], S[1]);
    mux_4_to_1 mux3 (d, In12, In13, In14, In15, S[0], S[1]);
    mux_4_to_1 final (out, a, b, c, d, S[2], S[3]);   

endmodule