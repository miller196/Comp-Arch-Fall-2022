module RAM(D,F,Adr,RW,clk);
	input [7:0] Adr;
	input RW,clk;
	input [31:0] D;
	output [31:0] F;
	
	reg [31:0] ram [255:0];
	reg [7:0] out;
	
	always @(posedge clk)
	begin
		if(RW)
			ram[Adr] <= D;
		out <= Adr;
	end
	 
	assign	F = (RW)? 32'bz:ram[out];
	
endmodule

