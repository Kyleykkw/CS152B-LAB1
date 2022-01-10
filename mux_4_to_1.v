`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2022 12:58:42 PM
// Design Name: 
// Module Name: mux_4_to_1
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
`include "mux_2_to_1.v"

// 
module mux_4_to_1(out, In0, In1, In2, In3, S0, S1);
    output out; 
    input In0, In1, In2, In3, S0, S1;
    
    wire a,b;
    
    mux_2_to_1 I0I1 (a, In0, In1, S0);
    mux_2_to_1 I2I3 (b, In2, In3, S0);
    mux_2_to_1 final (out, a, b, S1);
endmodule
