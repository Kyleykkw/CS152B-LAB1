`timescale 1ns / 1ps

module register_file(Ra, Rb, Rw, WrEn, busW, clk, rst, busA, busB);

	input [4:0] Ra, Rb, Rw;
	
	input WrEn;
	input rst, clk;
	
	input [15:0] busW;
	output [15:0] busA, busB;
	
	reg [15:0] regFile[0:31];
	
	integer i;
	always @(posedge clk) begin
		if (rst == 1'b1) begin
			for (i = 0; i < 32; i = i + 1) begin
				regFile[i] = 16'd0;
			end
		end
		else begin
			if (WrEn == 1'b1)
				regFile[Rw] = busW;
		end
	end	
	
	assign busA = regFile[Ra];
	assign busB = regFile[Rb];
	

endmodule