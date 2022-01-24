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
    wire overflow, sign, aSign, diffab;

    //wire [15:0] is_negative, is_zero;   // condition variables
    
    wire is_zero;

    sub16bits sub (a, b, difference, overflow);

    nor(is_zero, difference[0], difference[1], difference[2], difference[3], difference[4], difference[5], difference[6], difference[7], difference[8], difference[9], difference[10], difference[11], difference[12], difference[13], difference[14], difference[15]); // is_zero is set to 1 if the difference in subtraction is zero
	 
	xor(diffab, a[15], b[15]);  // diffab is 1 if the sign of a and b are different.
	xor (aSign, diffab, a[15]); // aSign should be 1 if the sign of a and b are different & the sign of a is negative.
	 
	wire signDiff, signEqual;
    and(signDiff, diffab, a[15]);
	and(signEqual, ~diffab, difference[15]);
	 
	or(out[0], signDiff, signEqual, is_zero); 
	and(out[1], 1'b0, 1'b0);
	and(out[2], 1'b0, 1'b0);
	and(out[3], 1'b0, 1'b0);
	and(out[4], 1'b0, 1'b0);
	and(out[5], 1'b0, 1'b0);
	and(out[6], 1'b0, 1'b0);
	and(out[7], 1'b0, 1'b0);
	and(out[8], 1'b0, 1'b0);
	and(out[9], 1'b0, 1'b0);
	and(out[10], 1'b0, 1'b0);
	and(out[11], 1'b0, 1'b0);
	and(out[12], 1'b0, 1'b0);
	and(out[13], 1'b0, 1'b0);
	and(out[14], 1'b0, 1'b0);
	and(out[15], 1'b0, 1'b0);
	 
endmodule
