module register_file(Ra, Rb, Rw, WrEn, busW, clk, rst, busA, busB);
    input [4:0] Ra, Rb, Rw;
    input WrEn, rst, clk;
    input [15:0] busW;
    output [15:0] busA, busB;
    
    reg [15:0] reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8;
    reg [15:0] reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16;
    reg [15:0] reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24;
    reg [15:0] reg25, reg26, reg27, reg28, reg29, reg30, reg31, reg32;
    
    always @ (posedge clk) begin
    
    end
        
endmodule