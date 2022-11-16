module Adder(Value1, Value2, CarryOut, RAdd);

input [31:0] Value1, Value2;
output CarryOut;
output [31:1] RAdd;
wire b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22, b23, b24, b25, b26, b27, b28, b29, b30, b31;



Add A1 (Value1[0], Value2[0], 0, b1, RAdd[0]);
Add A2 (Value1[1], Value2[1], b1, b2, RAdd[1]);
Add A3 (Value1[2], Value2[2], b2, b3, RAdd[2]);
Add A4 (Value1[3], Value2[3], b3, b4, RAdd[3]);
Add A5 (Value1[4], Value2[4], b4, b5, RAdd[4]);
Add A6 (Value1[5], Value2[5], b5, b6, RAdd[5]);
Add A7 (Value1[6], Value2[6], b6, b7, RAdd[6]);
Add A8 (Value1[7], Value2[7], b7, b8, RAdd[7]);
Add A9 (Value1[8], Value2[8], b8, b9, RAdd[8]);
Add A10 (Value1[9], Value2[9], b9, b10, RAdd[9]);
Add A11 (Value1[10], Value2[10], b10, b11, RAdd[10]);
Add A12 (Value1[11], Value2[11], b11, b12, RAdd[11]);
Add A13 (Value1[12], Value2[12], b12, b13, RAdd[12]);
Add A14 (Value1[13], Value2[13], b13, b14, RAdd[13]);
Add A15 (Value1[14], Value2[14], b14, b15, RAdd[14]);
Add A16 (Value1[15], Value2[15], b15, b16, RAdd[15]);
Add A17 (Value1[16], Value2[16], b16, b17, RAdd[16]);
Add A18 (Value1[17], Value2[17], b17, b18, RAdd[17]);
Add A19 (Value1[18], Value2[18], b18, b19, RAdd[18]);
Add A20 (Value1[19], Value2[19], b19, b20, RAdd[19]);
Add A21 (Value1[20], Value2[20], b20, b21, RAdd[20]);
Add A22 (Value1[21], Value2[21], b21, b22, RAdd[21]);
Add A23 (Value1[22], Value2[22], b22, b23, RAdd[22]);
Add A24 (Value1[23], Value2[23], b23, b24, RAdd[23]);
Add A25 (Value1[24], Value2[24], b24, b25, RAdd[24]);
Add A26 (Value1[25], Value2[25], b25, b26, RAdd[25]);
Add A27 (Value1[26], Value2[26], b26, b27, RAdd[26]);
Add A28 (Value1[27], Value2[27], b27, b28, RAdd[27]);
Add A29 (Value1[28], Value2[28], b28, b29, RAdd[28]);
Add A30 (Value1[29], Value2[29], b29, b30, RAdd[29]);
Add A31 (Value1[30], Value2[30], b30, b31, RAdd[30]);
Add A32 (Value1[31], Value2[31], b31, CarryOut, RAdd[31]);

endmodule
