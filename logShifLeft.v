`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:41 01/12/2022 
// Design Name: 
// Module Name:    logShifLeft 
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
module logShifLeft(a, b, s, cout);

	input [15:0] a, b; // Inputs A and B.
	output wire [15:0] s;	// Output s.
	output wire cout; 
	
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
	assign cout = 0;
	
endmodule
