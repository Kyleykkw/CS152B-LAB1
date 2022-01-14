`timescale 1ns / 1ns
`include "sub16bits.v"

module sub16bits_tb;

    reg [15:0] a, b; // data
    wire [15:0] d; // difference
    wire overflow; // carry

sub16bits uut(a, b, d, overflow);

initial begin
    
    $dumpfile("test_tb.vcd");
    $dumpvars(0, sub16bits_tb);

    a = 16'h1234;
    b = 16'h1111;
    #20

    $display("test complete");

end

endmodule