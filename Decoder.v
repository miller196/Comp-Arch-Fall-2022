module Decoder(Sel, WAdd, WEn, Clk);
input [4:0] WAdd;
input WEn, Clk;

output reg [31:0] Sel;


always @(posedge Clk)
if(WEn == 1)
begin
	case(WAdd)
	5'b00000 : Sel = 32'b00000000000000000000000000000001;
	5'b00001 : Sel = 32'b00000000000000000000000000000010;
	5'b00010 : Sel = 32'b00000000000000000000000000000100;
	5'b00011 : Sel = 32'b00000000000000000000000000001000;
	5'b00100 : Sel = 32'b00000000000000000000000000010000;
	5'b00101 : Sel = 32'b00000000000000000000000000100000;
	5'b00110 : Sel = 32'b00000000000000000000000001000000;
	5'b00111 : Sel = 32'b00000000000000000000000010000000;
	5'b01000 : Sel = 32'b00000000000000000000000100000000;
	5'b01001 : Sel = 32'b00000000000000000000001000000000;
	5'b01010 : Sel = 32'b00000000000000000000010000000000;
	5'b01011 : Sel = 32'b00000000000000000000100000000000;
	5'b01100 : Sel = 32'b00000000000000000001000000000000;
	5'b01101 : Sel = 32'b00000000000000000010000000000000;
	5'b01110 : Sel = 32'b00000000000000000100000000000000;
	5'b01111 : Sel = 32'b00000000000000001000000000000000;
	5'b10000 : Sel = 32'b00000000000000010000000000000000;
	5'b10001 : Sel = 32'b00000000000000100000000000000000;
	5'b10010 : Sel = 32'b00000000000001000000000000000000;
	5'b10011 : Sel = 32'b00000000000010000000000000000000;
	5'b10100 : Sel = 32'b00000000000100000000000000000000;
	5'b10101 : Sel = 32'b00000000001000000000000000000000;
	5'b10110 : Sel = 32'b00000000010000000000000000000000;
	5'b10111 : Sel = 32'b00000000100000000000000000000000;
	5'b11000 : Sel = 32'b00000001000000000000000000000000;
	5'b11001 : Sel = 32'b00000010000000000000000000000000;
	5'b11010 : Sel = 32'b00000100000000000000000000000000;
	5'b11011 : Sel = 32'b00001000000000000000000000000000;
	5'b11100 : Sel = 32'b00010000000000000000000000000000;
	5'b11101 : Sel = 32'b00100000000000000000000000000000;
	5'b11110 : Sel = 32'b01000000000000000000000000000000;
	5'b11111 : Sel = 32'b10000000000000000000000000000000;
	endcase
end
else
begin
Sel = 32'b00000000000000000000000000000000;
end

endmodule