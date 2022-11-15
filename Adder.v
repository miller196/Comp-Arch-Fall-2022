module Adder(DataA, DataB, Carryout, RAdd);

input [31:0] DataA, DataB;
output CarryOut;
output [31:1] RAdd
wire b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22, b23, b24, b25, b26, b27, b28, b29, b30, b31;



Add A1 (DataA[0], DataB[0], 0, b1, RAdd[0]);
Add A2 (DataA[1], DataB[1], b1, b2, RAdd[1]);
Add A3 (DataA[2], DataB[2], b2, b3, RAdd[2]);
Add A4 (DataA[3], DataB[3], b3, b4, RAdd[3]);
Add A5 (DataA[4], DataB[4], b4, b5, RAdd[4]);
Add A6 (DataA[5], DataB[5], b5, b6, RAdd[5]);
Add A7 (DataA[6], DataB[6], b6, b7, RAdd[6]);
Add A8 (DataA[7], DataB[7], b7, b8, RAdd[7]);
Add A9 (DataA[8], DataB[8], b8, b9, RAdd[8]);
Add A10 (DataA[9], DataB[9], b9, b10, RAdd[9]);
Add A11 (DataA[10], DataB[10], b10, b11, RAdd[10]);
Add A12 (DataA[11], DataB[11], b11, b12, RAdd[11]);
Add A13 (DataA[12], DataB[12], b12, b13, RAdd[12]);
Add A14 (DataA[13], DataB[13], b13, b14, RAdd[13]);
Add A15 (DataA[14], DataB[14], b14, b15, RAdd[14]);
Add A16 (DataA[15], DataB[15], b15, b16, RAdd[15]);
Add A17 (DataA[16], DataB[16], b16, b17, RAdd[16]);
Add A18 (DataA[17], DataB[17], b17, b18, RAdd[17]);
Add A19 (DataA[18], DataB[18], b18, b19, RAdd[18]);
Add A20 (DataA[19], DataB[19], b19, b20, RAdd[19]);
Add A21 (DataA[20], DataB[20], b20, b21, RAdd[20]);
Add A22 (DataA[21], DataB[21], b21, b22, RAdd[21]);
Add A23 (DataA[22], DataB[22], b22, b23, RAdd[22]);
Add A24 (DataA[23], DataB[23], b23, b24, RAdd[23]);
Add A25 (DataA[24], DataB[24], b24, b25, RAdd[24]);
Add A26 (DataA[25], DataB[25], b25, b26, RAdd[25]);
Add A27 (DataA[26], DataB[26], b26, b27, RAdd[26]);
Add A28 (DataA[27], DataB[27], b27, b28, RAdd[27]);
Add A29 (DataA[28], DataB[28], b28, b29, RAdd[28]);
Add A30 (DataA[29], DataB[29], b29, b30, RAdd[29]);
Add A31 (DataA[30], DataB[30], b30, b31, RAdd[30]);
Add A32 (DataA[31], DataB[31], b31, CarryOut, RAdd[31]);

endmodule
