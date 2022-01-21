`timescale 1ns / 1ps

module register_file_TB;

	// Inputs
	reg [4:0] Ra;
	reg [4:0] Rb;
	reg [4:0] Rw;
	reg WrEn;
	reg [15:0] busW;
	reg clk;
	reg rst;

	// Outputs
	wire [15:0] busA;
	wire [15:0] busB;

	// Instantiate the Unit Under Test (UUT)
	register_file uut (
		.Ra(Ra), 
		.Rb(Rb), 
		.Rw(Rw), 
		.WrEn(WrEn), 
		.busW(busW), 
		.clk(clk), 
		.rst(rst), 
		.busA(busA), 
		.busB(busB)
	);

	initial begin
		// Initialize Inputs
		Ra = 0;
		Rb = 0;
		Rw = 0;
		WrEn = 0;
		busW = 0;
		clk = 0;
		rst = 0;
		#30;
        
		// Case: Ra = 00011(3), Rb = 00100(4), Rw = 00011(5), WrEn = 1, busW = 0000000000001111(15), rst = 0.
		// The value busW is written to busA.
		Ra = 5'b00011;
		Rb = 5'b00100;
		Rw = 5'b00011;
		WrEn = 1'b1;
		busW = 16'b0000000000001111;
		rst = 1'b0;
		#30;
		
		// The value busW is written ro busB.
		Ra = 5'b00011;
		Rb = 5'b00100;
		Rw = 5'b00100;
		WrEn = 1'b1;
		busW = 16'b0000000000001111;
		rst = 1'b0;
		#30;
		
		// The value busW is not written to busA since WrEn = 0.
		Ra = 5'b00011;
		Rb = 5'b00100;
		Rw = 5'b00011;
		WrEn = 1'b0;
		busW = 16'b1111111111111111;
		rst = 1'b0;
		#30;
		
		// The value of rst = 1, so every element of regFile should be 0000000000000000.
		Ra = 5'b00011;
		Rb = 5'b00100;
		Rw = 5'b00011;
		WrEn = 1'b1;
		busW = 16'b1111111111111111;
		rst = 1'b1;
		#30;
		

	end
	
	always #5 clk = ~clk;
      
endmodule

