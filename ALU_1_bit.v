`include "mux_4_to_1.v"
`include "addbit.v"

// if m0 = 0, m1 = 0, out = a AND b 
// if m0 = 0, m1 = 1, out = NOT a
// if m0 = 1, m1 = 0, out = a OR b 
// if m0 = 1, m1 = 1, out = a add b
module ALU_1_bit(a, b, cin, cout, m0, m1, out);
    input a,b, cin, m0, m1;
    output cout, out;
    
    wire andAB, orAB, notA, addAB;
    
    and(andAB, a, b);
    or(orAB, a, b);
    not(notA, a);   
    addbit ab (a, b, cin, cout, addAB);
    
    mux_4_to_1 mux(out, andAB, orAB, notA, addAB, m0, m1);
    
endmodule
