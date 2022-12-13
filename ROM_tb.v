module ROM_tb();

reg clk;
reg [7:0] PC;

wire [31:0] Instruction;

ROM dut (PC, clk, Instruction);

initial begin
	clk <= 0;
	PC <= 0;
	#380 $stop;
end

always begin
	#5 clk <= ~clk;
end

always begin
	#10 PC <= PC + 8'd4;
end

endmodule