module ProgramCounter_tb();

reg clk;
reg Reset;

wire [31:0] pco, pci;
wire [31:0] Instruction;

PC dit (clk, pci, pco, Reset);
ROM dut (pco, Instruction);
Add dat (pci, pco);

initial begin
	clk <= 1'b0;
	Reset <= 1'b1;
	#10
	Reset <= 1'b0;
	#1000 $stop;
end

always begin
	#5 clk <= ~clk;
end

endmodule
