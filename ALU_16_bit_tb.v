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

    // subtraction 
    a = 16'h2345;
    b = 16'h1111;
    operation = 4'b0000;
    #20
    
    // (no overflow and zero)
    a = 16'h1234;
    b = 16'h1234;
    operation = 4'b0000;
    #20

    // negative overflow
    a = 16'h8000;
    b = 16'h7999;
    operation = 4'b0000;
    #20

    a = 16'hf000;
    b = 16'h7eee;
    operation = 4'b0000;
    #20

    // positive overflow
    a = 16'h7900;
    b = 16'h8000;
    operation = 4'b0000;
    #20

    a = 16'h7eee;
    b = 16'hf000;
    operation = 4'b0000;
    #20


    // addition (no overflow)
    a = 16'h1234;
    b = 16'h4321;
    operation = 4'b0001;
    #20

    a = 16'h0707;
    b = 16'h7070;
    operation = 4'b0001;
    #20

    // negative overflow
    a = 16'h8000;
    b = 16'h8000;
    operation = 4'b0001;
    #20

    a = 16'h800f;
    b = 16'hf177;
    operation = 4'b0001;
    #20

    // possitive overflow
    a = 16'h7fff;
    b = 16'h7fff;
    operation = 4'b0001;
    #20

    a = 16'h7ddd;
    b = 16'h6fff;
    operation = 4'b0001;
    #20

    // bitwise or
    a = 16'h0000;
    b = 16'habcd;
    operation = 4'b0010;
    #20

    a = 16'h1234;
    b = 16'h2645;
    operation = 4'b0010;
    #20

    // bitwise and
    a = 16'hffff;
    b = 16'habcd;
    operation = 4'b0011;
    #20

    a = 16'h1234;
    b = 16'h2645;
    operation = 4'b0011;
    #20

    // decrement
    a = 16'h1234;
    operation = 4'b0100;
    #20

    // increment
    a = 16'h1234;
    operation = 4'b0101;
    #20
  

    // invert
    a = 16'hffff;
    operation = 4'b0110;
    #20
  
    // arithmetic shift left
    a = 16'hfff;
    b = 16'h3;
    operation = 4'b1100;
    #20

    // overflow
    a = 16'h7fff;
    b = 16'h1;
    operation = 4'b1100;
    #20
  

    // arithmetic shift right
    a = 16'hfff;
    b = 16'h5;
    operation = 4'b1110;
    #20

    a = 16'h8000;
    b = 16'hf;
    operation = 4'b1110;
    #20
 
    // logical shift left
    a = 16'hfff;
    b = 16'h4;
    operation = 4'b1000;
    #20
 

    // logical shift right
    a = 16'hffff;
    b = 16'hc;
    operation = 4'b1010;
    #20

    // set less than or equal to
    a = 16'h1234;
    b = 16'h1234;
    operation = 4'b1001;
    #20

    a = 16'h1;
    b = 16'h8000;
    operation = 4'b1001;
    #20

    a = 16'h3;
    b = 16'h1;
    operation = 4'b1001;
    #20

    a = 16'hf345; // -3259
    b = 16'hf333; // -3277
    operation = 4'b1001;
    #20

    $display("test complete");
end

endmodule