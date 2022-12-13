module ProgramCounter(clk,pci, pco, rst);

input [31:0] pci;
input rst, clk;

output reg [31:0] pco;

always @(posedge clk)
begin
if (rst == 1)
	pco <= 32'b0;
else
	pco <= pci;
end

endmodule