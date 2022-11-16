module LLS(ResultC, Value1, Value2);

input [31:0] Value1, Value2;
output reg [31:0] ResultC;

always
ResultC = (Value1<<Value2);

endmodule