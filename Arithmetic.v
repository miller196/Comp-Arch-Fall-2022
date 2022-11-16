module Arithmetic(ResultC, OverFlow, CarryOut, Negative, Value1, Value2);

input[31:0] Value1, Value2;
output reg OverFlow;
output CarryOut, Negative;
output [31:0] ResultC;

Adder ADD32(Value1, Value2, CarryOut, ResultC);

assign NAgtive = ResultC[31];

always
begin
if(Value1[31] == 1 && Value2[31] == 1 && ResultC[31] == 0) begin
	OverFlow = 1;
end else if (Value1[31] == 0 && Value2[31] == 0 && ResultC[31] == 1) begin
	OverFlow = 1;
end else 
	OverFlow = 0;
end
endmodule