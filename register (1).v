//David Miller, KIeran Murphy, Tom Brown, Omar Bedewy
//Register File Lab
module register(rd, rs1, rs2, rst, enable, readOrWrite, RegOutput1, RegOutput2, clk);
input readOrWrite;
input clk, rst;
input [31:0] enable;
input [4:0] rs1;
input [4:0] rs2;
input [4:0] rd;
output reg [31:0] RegOutput1;
output reg [31:0] RegOutput2;
reg [31:0] container[31:0];
integer x;

always @(posedge clk) begin

	if (rst == 1) begin 
		for (x = 0; x < 32; x = x + 1) begin
			container[x] <= 0;
		end
	end
	
	else begin
		if (readOrWrite == 0) begin 
			container[rd] <= enable;	
		end
		if (readOrWrite == 1) begin		
			RegOutput1 <= container[rs1];
			RegOutput2 <= container[rs2];
		end
	end	
end
endmodule 