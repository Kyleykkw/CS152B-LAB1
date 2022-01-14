`timescale 1ns / 1ns
`include "add16bits.v"

module add16bits_tb;

    reg [15:0] a, b; // data
    wire [15:0] s; // sum
    wire overflow; //  overflow

add16bits uut(a, b, s, overflow);

initial begin
    
    $dumpfile("test_tb.vcd");
    $dumpvars(0, add16bits_tb);

    a = 16'h1234;
    b = 16'h4321;
    #20

    a = 16'habcd;
    b = 16'h9943;
    #20

    $display("test complete");

end

endmodule