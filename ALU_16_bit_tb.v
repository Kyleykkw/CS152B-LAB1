`timescale 1ns / 1ns
`include "ALU_16_bit.v"

module alu16bit_tb;

    reg [15:0] a, b; // input 1, 2, and carry in
    reg [3:0] operation;
    wire [15:0] S; // output and carry out
    wire overflow, zero;

alu16bit uut(a, b, operation, S, overflow, zero);

initial begin
    
    $dumpfile("test_tb.vcd");
    $dumpvars(0, alu16bit_tb);

    a = 16'h1234;
    b = 16'h4321;
    operation = 4'b0001;
    #20

    a = 16'h1234;
    b = 16'h1234;
    operation = 4'b0000;
    #20

    $display("test complete");
end

endmodule