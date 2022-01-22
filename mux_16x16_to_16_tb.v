`timescale 1ns / 1ns
`include "mux_16x16_to_16.v"

module mux_16x16_to_16_tb;

    reg [16:0] In0; 
    reg [16:0] In0; 
    reg [16:0] In0; 
    reg [16:0] In0; 
    reg [16:0] In0; 
    
    reg [3:0] S; 
    wire [15:0] out; 

mux_16x16_to_16 uut(out, In, S);

initial begin
    
    $dumpfile("test_tb.vcd");
    $dumpvars(0, mux_16x16_to_16_tb);

    In = {16'h0000, 16'h1111, 16'h2222, 16'h3333, 16'h4444, 16'h5555, 16'h6666, 16'h7777, 16'h8888, 16'h9999, 16'haaaa, 16'hbbbb, 16'hcccc, 16'hdddd, 16'heeee, 16'hffff};
    S = 4'h7;
    #20

    $display("test complete");

end

endmodule