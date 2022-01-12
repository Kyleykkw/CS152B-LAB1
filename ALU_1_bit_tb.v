`timescale 1ns / 1ps
`include "ALU_1_bit.v"

module ALU_1_bit_tb;
    reg a, b, cin, m0, m1;
    wire cout, out;
    
    ALU_1_bit uut(a, b, cin, cout, m0, m1, out);
    
    initial begin
        
        $dumpfile("test_tb.vcd");
        $dumpvars(0, ALU_1_bit_tb );
        
        // a = 1, b = 0
        a = 1;
        b = 0;
        cin = 0;
        
        // a AND b = 0
        m0 = 0;
        m1 = 0;
        
        #10
        
        // NOT a = 0
        m0 = 0;
        m1 = 1;
        
        #10
        
        // a OR b = 1
        m0 = 1;
        m1 = 0;
        
        #10
        
        // a + b = 1
        m0 = 1;
        m1 = 1;
        
        #10 
        
        
        
        // a = 0, b = 1
        a = 0;
        b = 1;
        cin = 0;
        
        // a AND b = 0
        m0 = 0;
        m1 = 0;
        
        #10
        
        // NOT a = 1
        m0 = 0;
        m1 = 1;
        
        #10
        
        // a OR b = 1
        m0 = 1;
        m1 = 0;
        
        #10
        
        // a + b = 1
        m0 = 1;
        m1 = 1;
        
        #10 
        
        
        
        // a = 1, b = 1
        a = 1;
        b = 1;
        cin = 0;
        
        // a AND b = 1
        m0 = 0;
        m1 = 0;
        
        #10
        
        // NOT a = 0
        m0 = 0;
        m1 = 1;
        
        #10
        
        // a OR b = 1
        m0 = 1;
        m1 = 0;
        
        #10
        
        // a + b = 0
        m0 = 1;
        m1 = 1;
        
        #10 
        
        
        
        // a = 0, b = 0
        a = 0;
        b = 0;
        cin = 0;
        
        // a AND b = 0
        m0 = 0;
        m1 = 0;
        
        #10
        
        // NOT a = 1
        m0 = 0;
        m1 = 1;
        
        #10
        
        // a OR b = 0
        m0 = 1;
        m1 = 0;
        
        #10
        
        // a + b = 0
        m0 = 1;
        m1 = 1;
        
        #10 
        $finish;  
    end
endmodule
