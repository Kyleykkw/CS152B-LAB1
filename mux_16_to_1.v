`include "mux_4_to_1.v"

// 
module mux_16_to_1(out, In, S);
    output out; 
    input [15:0] In;
    input [3:0] S;
    
    wire a, b, c, d;
    
    mux_4_to_1 mux0 (a, In[0], In[1], In[2], In[3], S[0], S[1]);
    mux_4_to_1 mux1 (b, In[4], In[5], In[6], In[7], S[0], S[1]);
    mux_4_to_1 mux2 (c, In[8], In[9], In[10], In[11], S[0], S[1]);
    mux_4_to_1 mux3 (d, In[12], In[13], In[14], In[15], S[0], S[1]);
    mux_4_to_1 final (out, a, b, c, d, S[2], S[3]);   

endmodule