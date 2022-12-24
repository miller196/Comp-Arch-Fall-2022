module Register(Clk, Reset, EnW, WAdd, DIn, ReadA, ReadB, DA, DB);


input Clk, Reset, EnW;
input [31:0] DIn;
input [4:0] WAdd, ReadA, ReadB;
output [31:0] DA, DB;

wire [31:0] Sel;

wire [31:0] R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31;

Decoder Dec (Sel, WAdd, EnW, Clk);
CompArchReg Reg0 (R0, DIn, Clk, Reset, Sel[0]);
CompArchReg Reg1 (R1, DIn, Clk, Reset, Sel[1]);
CompArchReg Reg2 (R2, DIn, Clk, Reset, Sel[2]);
CompArchReg Reg3 (R3, DIn, Clk, Reset, Sel[3]);
CompArchReg Reg4 (R4, DIn, Clk, Reset, Sel[4]);
CompArchReg Reg5 (R5, DIn, Clk, Reset, Sel[5]);
CompArchReg Reg6 (R6, DIn, Clk, Reset, Sel[6]);
CompArchReg Reg7 (R7, DIn, Clk, Reset, Sel[7]);
CompArchReg Reg8 (R8, DIn, Clk, Reset, Sel[8]);
CompArchReg Reg9 (R9, DIn, Clk, Reset, Sel[9]);
CompArchReg Reg10 (R10, DIn, Clk, Reset, Sel[10]);
CompArchReg Reg11 (R11, DIn, Clk, Reset, Sel[11]);
CompArchReg Reg12 (R12, DIn, Clk, Reset, Sel[12]);
CompArchReg Reg13 (R13, DIn, Clk, Reset, Sel[13]);
CompArchReg Reg14 (R14, DIn, Clk, Reset, Sel[14]);
CompArchReg Reg15 (R15, DIn, Clk, Reset, Sel[15]);
CompArchReg Reg16 (R16, DIn, Clk, Reset, Sel[16]);
CompArchReg Reg17 (R17, DIn, Clk, Reset, Sel[17]);
CompArchReg Reg18 (R18, DIn, Clk, Reset, Sel[18]);
CompArchReg Reg19 (R19, DIn, Clk, Reset, Sel[19]);
CompArchReg Reg20 (R20, DIn, Clk, Reset, Sel[20]);
CompArchReg Reg21 (R21, DIn, Clk, Reset, Sel[21]);
CompArchReg Reg22 (R22, DIn, Clk, Reset, Sel[22]);
CompArchReg Reg23 (R23, DIn, Clk, Reset, Sel[23]);
CompArchReg Reg24 (R24, DIn, Clk, Reset, Sel[24]);
CompArchReg Reg25 (R25, DIn, Clk, Reset, Sel[25]);
CompArchReg Reg26 (R26, DIn, Clk, Reset, Sel[26]);
CompArchReg Reg27 (R27, DIn, Clk, Reset, Sel[27]);
CompArchReg Reg28 (R28, DIn, Clk, Reset, Sel[28]);
CompArchReg Reg29 (R29, DIn, Clk, Reset, Sel[29]);
CompArchReg Reg30 (R30, DIn, Clk, Reset, Sel[30]);
CompArchReg Reg31 (R31, DIn, Clk, Reset, Sel[31]);
Multiplex MulA (R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, ReadA, DA, Clk); 

Multiplex MulB (R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, ReadB, DB, Clk);

endmodule