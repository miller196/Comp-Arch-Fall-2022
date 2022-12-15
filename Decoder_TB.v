module Decoder_TB();

reg [4:0] Input;


reg En, Clk;


wire [31:0] Output;


Decoder dut (Input, Output, Clk, En);

initial begin
	En <= 1'b0;
	Input <= 5'b00000;
	Clk <= 1'b1;
	#5 En <= 1'b1;
	#1000 $stop;
end

always
	#5 Clk <= ~Clk;
	
always begin
	#5 Input <= Input + 5'b1;
	#5;
end



endmodule