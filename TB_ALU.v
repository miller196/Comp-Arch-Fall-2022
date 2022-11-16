module TB_ALU();

reg Clock;
reg [5:0] OP;
reg [31:0] Value1, Value2;

wire [31:0] Status;
wire[3:0] ResultC;
alu dut (Value1, Value2, OPCode, Clock, ResultC, Status);

initial begin
	Clock <= 1'b1;
	Value1 <= 32'b0;
	Value2 <= 32'b101;
	OP <= 6'b111111;
	#5 OP <= 6'b001000;
	#100 OP <= 6'b001000;
	#150 OP <= 6'b001001;
	#200 OP <= 6'b001010;
	#250 OP <= 6'b000100;
	#300 OP <= 6'b000101;
	#350 OP <= 6'b001000;
	#350 Value1 <= 32'b11111111111111111111111111111011;
	#350 Value2 <= 32'b11111111111111111111111111111001;
	#750 $stop;
	
	end
	
always 
	#5 Clock <= ~Clock;
	
always begin
	#10 Value1 <= Value1 + 32'b1010;
	Value2 <= Value2 + 32'b10100;
end

endmodule

