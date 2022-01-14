`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2022 02:54:10 PM
// Design Name: 
// Module Name: invert_tb
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
`include "invert.v"

module invert_tb;
    reg [15:0] In;
    wire [15:0] out;
    
    invert uut(out, In);
    
    initial begin
        $dumpfile("test_tb_2.vcd");
        $dumpvars(0, invert_tb );
        
        In = 16'b0000_0000_0000_0000;
        #10
        In = 16'b1010_1010_1010_1010;       
        #10
        $finish; 
    end
endmodule
