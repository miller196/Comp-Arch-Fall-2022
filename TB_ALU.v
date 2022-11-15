module alu_tb();

reg Clock
reg [5:0] OPCode;
reg [31:0] ResultC;

wire [31:0] Status;
wire[3:0] ResultC;
alu dut (DataA, DataB, OPCode, Clock, ResultC, Status);

initial begin
	Clock <= 1'b1;
	DataA <= 32'b0
	DataB <= 32'b101;
	OPCode <= 6'b111111;
	#5 OPCode <= 6'b010000;
	#50 OPCode <= 6'b010000;
	#100 OPCode <= 6'b010001;
	#150 OPCode <= 6'b010010;
	#200 OPCode <= 6'b001100;
	#250 OPCode <= 6'b001101;
	#300 OPCode <= 6'b010000;
	#300 DataA <= 32'b11111111111111111111111111111011;
	#300 DataB <= 32'b11111111111111111111111111111001;
	#1000 $stop;
	
	end
	
always 
	#5 Clock <= ~Clock;
	
always begin
	#10 DataA <= DataA + 32'b1010;
	DataB <= DataB + 32'b10100;
end

endmodule

