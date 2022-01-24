`timescale 1ns / 1ps
//`include "add16bits.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/14/2022 02:50:15 PM
// Design Name: 
// Module Name: invert
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


module invert(out, In, overflow);
    input [15:0] In;
    output [15:0] out;
    output overflow;
    
    wire [15:0] In_;

    // create 2's complement of In
    not(In_[0], In[0]);
    not(In_[1], In[1]);
    not(In_[2], In[2]);
    not(In_[3], In[3]);
    not(In_[4], In[4]);
    not(In_[5], In[5]);
    not(In_[6], In[6]);
    not(In_[7], In[7]);
    not(In_[8], In[8]);
    not(In_[9], In[9]);
    not(In_[10], In[10]);
    not(In_[11], In[11]);
    not(In_[12], In[12]);
    not(In_[13], In[13]);
    not(In_[14], In[14]);
    not(In_[15], In[15]);

    add16bits add0 (In_, 16'h1, out, overflow); // find -In
    
endmodule
