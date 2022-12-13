module RAM_TB();

reg [7:0] InSel, OutSel;
reg Clk;
reg [31:0] In;

wire [31:0] Out;

RAM dut (InSel, Clk, In, OutSel, Out);

initial begin
	InSel <= 8'b00000000;
	OutSel <= 8'b00000000;
	In <= 32'b0;
	Clk <= 0;
	#2000 $stop;
end
	
always begin
	#5 Clk <= ~Clk;
end
	
always begin
	#10 InSel <= InSel + 8'd8;
		 In <= In + 32'd2048;
end

always begin
	#20 OutSel <= InSel;
end

endmodule