`include "add16bits.v"

module sub16bits (a, b, d, overflow);

    input [15:0] a, b; // input 1, 2, and carry in
    output [15:0] d; // output and carry
    output overflow; 

    wire [15:0] b_, negation_b;
    wire b_of, sub_of;

    // create 2's complement of b
    not(b_[0], b[0]);
    not(b_[1], b[1]);
    not(b_[2], b[2]);
    not(b_[3], b[3]);
    not(b_[4], b[4]);
    not(b_[5], b[5]);
    not(b_[6], b[6]);
    not(b_[7], b[7]);
    not(b_[8], b[8]);
    not(b_[9], b[9]);
    not(b_[10], b[10]);
    not(b_[11], b[11]);
    not(b_[12], b[12]);
    not(b_[13], b[13]);
    not(b_[14], b[14]);
    not(b_[15], b[15]);

    add16bits add0 (b_, 16'h1, negation_b, b_of); // find -b

    add16bits add1 (a, negation_b, d, sub_of); // calculate a - b

    or(overflow, b_of, sub_of);

endmodule