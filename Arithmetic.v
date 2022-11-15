module Arithmetic(ResultC, Overflow, Carryout, Negative, DataA, DataB);

input[31:0] DataA, DataB;
output reg OverFlow;
output CarryOut, Negative;
output [31:0] ResultC;

Adder ADD32(DataA, DataB, CarryOut, ResultC);

assign NAgtive = ResultC[31];

always
begin
if(DataA[31] == 1 && DataB[31] == 1 && ResultC[31] == 1) begin
	Overflow = 1;
end else if (DataA[31] == 1 && ResultC[31] == 0) begin
	OverFlow = 1;
end else 
	OverFlow = 0
end
endmodule