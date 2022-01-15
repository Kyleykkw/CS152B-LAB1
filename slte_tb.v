`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2022 05:20:09 PM
// Design Name: 
// Module Name: slte_tb
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
`include "slte.v"

module slte_tb;

    reg [15:0] a, b; 
    wire [15:0] out; 

    slte uut(a, b, out);

    initial begin
    
        $dumpfile("test_tb_3.vcd");
        $dumpvars(0, slte_tb);

        a = 16'h1234;
        b = 16'h1111;
    
        #20
    
        a = 16'h2223;
        b = 16'h2223;
    
        #20
    
        a = 16'h3456;
        b = 16'h4567;
    
        #20
    
        a = 16'h4321;
        b = 16'h3210;
    
        #20

        $finish;

    end
endmodule
