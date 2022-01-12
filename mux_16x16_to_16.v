`include "mux_16_to_1.v"

// 
module mux_16x16_to_16(out, In, S);
    output [15:0] out; // output
    input [255:0] In; // input data
    input [3:0] S; 

    wire [15:0] group0, group1, group2, group3, group4, group5, group6, group7, group8, group9, group10, group11, group12, group13, group14, group15; // for regrouping

    // regrouping input
    assign group0 = { In[0], In[16], In[32], In[48], In[64], In[80], In[96], In[112], In[128], In[144], In[160], In[176], In[192], In[208], In[224], In[240] };
    assign group1 = { In[1], In[17], In[33], In[49], In[65], In[81], In[97], In[113], In[129], In[145], In[161], In[177], In[193], In[209], In[225], In[241] };
    assign group2 = { In[2], In[18], In[34], In[50], In[66], In[82], In[98], In[114], In[130], In[146], In[162], In[178], In[194], In[210], In[226], In[242] };
    assign group3 = { In[3], In[19], In[35], In[51], In[67], In[83], In[99], In[115], In[131], In[147], In[163], In[179], In[195], In[211], In[227], In[243] };
    assign group4 = { In[4], In[20], In[36], In[52], In[68], In[84], In[100], In[116], In[132], In[148], In[164], In[180], In[196], In[212], In[228], In[244] };
    assign group5 = { In[5], In[21], In[37], In[53], In[69], In[85], In[101], In[117], In[133], In[149], In[165], In[181], In[197], In[213], In[229], In[245] };
    assign group6 = { In[6], In[22], In[38], In[54], In[70], In[86], In[102], In[118], In[134], In[150], In[166], In[182], In[198], In[214], In[230], In[246] };
    assign group7 = { In[7], In[23], In[39], In[55], In[71], In[87], In[103], In[119], In[135], In[151], In[167], In[183], In[199], In[215], In[231], In[247] };
    assign group8 = { In[8], In[24], In[40], In[56], In[72], In[88], In[104], In[120], In[136], In[152], In[168], In[184], In[200], In[216], In[232], In[248] };
    assign group9 = { In[9], In[25], In[41], In[57], In[73], In[89], In[105], In[121], In[137], In[153], In[169], In[185], In[201], In[217], In[233], In[249] };
    assign group10 = { In[10], In[26], In[42], In[58], In[74], In[90], In[106], In[122], In[138], In[154], In[170], In[186], In[202], In[218], In[234], In[250] };
    assign group11 = { In[11], In[27], In[43], In[59], In[75], In[91], In[107], In[123], In[139], In[155], In[171], In[187], In[203], In[219], In[235], In[251] };
    assign group12 = { In[12], In[28], In[44], In[60], In[76], In[92], In[108], In[124], In[140], In[156], In[172], In[188], In[204], In[220], In[236], In[252] };
    assign group13 = { In[13], In[29], In[45], In[61], In[77], In[93], In[109], In[125], In[141], In[157], In[173], In[189], In[205], In[221], In[237], In[253] };
    assign group14 = { In[14], In[30], In[46], In[62], In[78], In[94], In[110], In[126], In[142], In[158], In[174], In[190], In[206], In[222], In[238], In[254] };
    assign group15 = { In[15], In[31], In[47], In[63], In[79], In[95], In[111], In[127], In[143], In[159], In[175], In[191], In[207], In[223], In[239], In[255] };

    mux_16_to_1 mux0 (out[0], group0, S);
    mux_16_to_1 mux1 (out[1], group1, S);
    mux_16_to_1 mux2 (out[2], group2, S);
    mux_16_to_1 mux3 (out[3], group3, S);
    mux_16_to_1 mux4 (out[4], group4, S);
    mux_16_to_1 mux5 (out[5], group5, S);
    mux_16_to_1 mux6 (out[6], group6, S);
    mux_16_to_1 mux7 (out[7], group7, S);
    mux_16_to_1 mux8 (out[8], group8, S);
    mux_16_to_1 mux9 (out[9], group9, S);
    mux_16_to_1 mux10 (out[10], group10, S);
    mux_16_to_1 mux11 (out[11], group11, S);
    mux_16_to_1 mux12 (out[12], group12, S);
    mux_16_to_1 mux13 (out[13], group13, S);
    mux_16_to_1 mux14 (out[14], group14, S);
    mux_16_to_1 mux15 (out[15], group15, S);

endmodule