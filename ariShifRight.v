`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:23 01/12/2022 
// Design Name: 
// Module Name:    ariShifRight 
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
module ariShifRight(a, b, s, cout);

	input [15:0] a, b; // Inputs A and B.
	output wire [15:0] s;	// Output s.
	output wire cout; 	// cout == 1 when shift changes the sign of the number.
	
	integer i, j;
	reg[15:0] preShiftedInput, nextShiftedInput;
	
	always @(*) begin
		preShiftedInput = a;
		for (i = 0; i < b; i = i + 1) begin
				nextShiftedInput[15] = preShiftedInput[15];
				for (j = 15; j > -1; j = j - 1)
					nextShiftedInput[j - 1] = preShiftedInput[j];
				preShiftedInput = nextShiftedInput;
		end
	end
	
	assign s = nextShiftedInput;
	assign cout = s[15] & ~a[15] | ~s[15] & a[15];

endmodule
