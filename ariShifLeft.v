`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:35 01/14/2022 
// Design Name: 
// Module Name:    ariShifLeft 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ariShifLeft(a, b, s, cout);

	input [15:0] a, b; // Inputs A and B.
	output wire [15:0] s;	// Output s.
	output wire cout; 	// cout == 1 when shift changes the sign of the number.
	
	integer i, j;
	reg[15:0] preShiftedInput, nextShiftedInput;
	
	always @(*) begin
		preShiftedInput = a;
		for (i = 0; i < b; i = i + 1) begin
				nextShiftedInput[0] = 1'b0;
				for (j = 1; j < 16; j = j + 1)
					nextShiftedInput[j] = preShiftedInput[j - 1];
				preShiftedInput = nextShiftedInput;
		end
	end
	
	assign s = nextShiftedInput;
	assign cout = s[15] & ~a[15] | ~s[15] & a[15];
	
endmodule
