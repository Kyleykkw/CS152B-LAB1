`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/10/2022 12:25:21 PM
// Design Name: 
// Module Name: 2_to_1_mux
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

// if S = 0, out = In0 
// if S = 1, out = In1
module mux_2_to_1(out, In0, In1, S);
    output out;
    input In0, In1, S;
    
    wire a, b, notS;
    
    not (notS, S);
    and (a, In1, S);
    and (b, In0, notS);
    or (out, a, b);
        
endmodule


