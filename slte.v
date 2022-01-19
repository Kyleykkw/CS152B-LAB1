`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2022 03:54:27 PM
// Design Name: 
// Module Name: slte
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
`include "sub16bits.v"

// if a <= b, out = 16'h0001, else out = 16'h0000
module slte(a, b, out);
    input [15:0] a, b; 
    output [15:0] out;
    
    wire [15:0] difference; // variables for sub16bits module
    wire overflow;
    wire sign;

    wire [15:0] is_negative, is_zero;   // condition variables
    
    sub16bits sub (a, b, difference, overflow);

    xor(sign, difference[15], overflow); // find the actual sign of subtraction (consider)
    
    assign is_negative = {15'b000_0000_0000_0000, sign};  // if a < b, is_negative = 16'h0001
    assign is_zero = (difference == 16'h0000);                      // if a == b, is_zero = 16'h0001
    
    assign out = is_negative | is_zero;
endmodule
