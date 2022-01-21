//`include "add16bits.v"
//`include "sub16bits.v"
`include "invert.v"
`include "ariShifLeft.v"
`include "ariShifRight.v"
`include "logShifLeft.v"
`include "logShifRight.v"
`include "slte.v"
//`include "mux_16_to_1.v"
`include "mux_16x16_to_16.v"

module alu16bit (a, b, operation, S, overflow, zero);

    input [15:0] a, b; // input 1, 2, and carry in
    input [3:0] operation;
    output [15:0] S; // output and carry out
    output overflow, zero;

    wire [15:0] SUB, ADD, OR, AND, DEC, INC, INV, ASL, ASR, LSL, LSR, LEQ; // for calculating carry out
    wire [255:0] mux_input;
    wire [15:0] overflows;

    // subtraction
    sub16bits sub(a, b, SUB, overflows[0]);

    // addition
    add16bits add(a, b, ADD, overflows[1]); 

    // bitwise or
    or(OR[0], a[0], b[0]);
    or(OR[1], a[1], b[1]);
    or(OR[2], a[2], b[2]);
    or(OR[3], a[3], b[3]);
    or(OR[4], a[4], b[4]);
    or(OR[5], a[5], b[5]);
    or(OR[6], a[6], b[6]);
    or(OR[7], a[7], b[7]);
    or(OR[8], a[8], b[8]);
    or(OR[9], a[9], b[9]);
    or(OR[10], a[10], b[10]);
    or(OR[11], a[11], b[11]);
    or(OR[12], a[12], b[12]);
    or(OR[13], a[13], b[13]);
    or(OR[14], a[14], b[14]);
    or(OR[15], a[15], b[15]);

    assign overflows[2] = 0;

    // bitwise and
    and(AND[0], a[0], b[0]);
    and(AND[1], a[1], b[1]);
    and(AND[2], a[2], b[2]);
    and(AND[3], a[3], b[3]);
    and(AND[4], a[4], b[4]);
    and(AND[5], a[5], b[5]);
    and(AND[6], a[6], b[6]);
    and(AND[7], a[7], b[7]);
    and(AND[8], a[8], b[8]);
    and(AND[9], a[9], b[9]);
    and(AND[10], a[10], b[10]);
    and(AND[11], a[11], b[11]);
    and(AND[12], a[12], b[12]);
    and(AND[13], a[13], b[13]);
    and(AND[14], a[14], b[14]);
    and(AND[15], a[15], b[15]);

    assign overflows[3] = 0;

    // decrement
    sub16bits dec(a, 16'h1, DEC, overflows[4]);

    // increment
    add16bits inc(a, 16'h1, INC, overflows[5]); 

    // invert of a
    invert inv (INV, a);

    assign overflows[6] = 0;

    // arithmetic shift left
    ariShifLeft asl (a, b, ASL, overflows[12]);

    // arithmetic shift right
    ariShifRight asr (a, b, ASR, overflows[14]);

    // logic shift left
    logShifLeft lsl (a, b, LSL, overflows[8]);

    // logic shift right
    logShifRight lsr (a, b, LSR, overflows[10]);

    // set less than or equal to
    slte leq (a, b, LEQ);

    assign overflows[9] = 0;

    // assign unused control numbers
    assign overflows[7] = 0;
    assign overflows[11] = 0;
    assign overflows[13] = 0;
    assign overflows[15] = 0;

    // use mux on results
    assign mux_input = {SUB, ADD, OR, AND, DEC, INC, INV, 16'h0, LSL, LEQ, LSR, 16'h0, ASL, 16'h0, ASR, 16'h0};
    mux_16x16_to_16 mux_s (S, mux_input, operation);

    // use mux on overflow
    mux_16_to_1 mux_of (overflow, overflows, operation);

    // calculate zero
    nor(zero, S[0], S[1], S[2], S[3], S[4], S[5], S[6], S[7], S[8], S[9], S[10], S[11], S[12], S[13], S[14], S[15]);

endmodule