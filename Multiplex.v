module Multiplex(R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31, ReadAdd, Output, Clk);
input [31:0] R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15, R16, R17, R18, R19, R20, R21, R22, R23, R24, R25, R26, R27, R28, R29, R30, R31;
input [4:0] ReadAdd;

input Clk;
output reg [31:0] Output;

always @(posedge Clk)

begin

case(ReadAdd)
	5'b00000 : Output = R0;
	5'b00001 : Output = R1;
	5'b00010 : Output = R2;
	5'b00011 : Output = R3;
	5'b00100 : Output = R4;
	5'b00101 : Output = R5;
	5'b00110 : Output = R6;
	5'b00111 : Output = R7;
	5'b01000 : Output = R8;
	5'b01001 : Output = R9;
	5'b01010 : Output = R10;
	5'b01011 : Output = R11;
	5'b01100 : Output = R12;
	5'b01101 : Output = R13;
	5'b01110 : Output = R14;
	5'b01111 : Output = R15;
	5'b10000 : Output = R16;
	5'b10001 : Output = R17;
	5'b10010 : Output = R18;
	5'b10011 : Output = R19;
	5'b10100 : Output = R20;
	5'b10101 : Output = R21;
	5'b10110 : Output = R22;
	5'b10111 : Output = R23;
	5'b11000 : Output = R24;
	5'b11001 : Output = R25;
	5'b11010 : Output = R26;
	5'b11011 : Output = R27;
	5'b11100 : Output = R28;
	5'b11101 : Output = R29;
	5'b11110 : Output = R30;
	5'b11111 : Output = R31;
	
endcase
end
endmodule