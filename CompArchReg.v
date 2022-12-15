module CompArchReg(R, DIn, Clk, Reset, EnW);
input Clk, Reset, EnW;
input [31:0] DIn;
output reg [31:0] R;

always @(posedge Clk)
begin

	if(Reset == 1)
	begin
		R = 0;
	end
	
	else if(EnW == 1)
	begin
		R = DIn;
	end
	else
	begin
		R = R;
	end
end

endmodule