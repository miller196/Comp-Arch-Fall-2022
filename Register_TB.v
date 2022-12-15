module Register_TB();

reg Clk, Reset, EnW;
reg [31:0] DIn;
reg [4:0] WAdd, ReadA, ReadB;

wire [31:0] DA, DB;

Register dut (Clk, Reset, EnW, WAdd, DIn, ReadA, ReadB, DA, DB);

initial begin
	Reset <= 1'b1;
	Clk <= 1'b1;
	EnW <= 1'b1;
	WAdd <= 5'b00000;
	ReadA <= 5'b00000;
	ReadB <= 5'b00000;
	DIn <= 32'b101;
	#5 Reset <= 1'b0;
	#1000 EnW <= 1'b0;
	#2000 $stop;
end

always
	#5 Clk <= ~Clk;

always begin
	#5 WAdd <= WAdd + 5'b1;
	#10 ReadA <= ReadA + 5'b1;
	#10 ReadB <= ReadB + 5'b1;
	#1 DIn <= DIn + 32'b101;
	
end

endmodule