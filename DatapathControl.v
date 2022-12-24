module DatapathControl(PCsrc, EnW, IMMSel, ALUsrc, Write, WB, Read, Zero, OP);

output reg [1:0] IMMSel;
output reg PCsrc, EnW, ALUsrc, Write, WB, Read;

input Zero;
input [6:0] OP;

always @(OP)
begin
	case(OP)
	7'b0110011 : begin
		PCsrc <= 0;
		EnW <= 1;
		IMMSel <= 2'b00;
		ALUsrc <= 0;
		Write <= 0;
		Read <= 0;
		WB <= 1;
		end
	7'b0010011 : begin
		PCsrc <= 0;
		EnW <= 1;
		IMMSel <= 2'b00;
		ALUsrc <= 1;
		Write <= 0;
		Read <= 0;
		WB <= 1;
		end
	7'b0100011 : begin
		PCsrc <= 0;
		EnW <= 0;
		IMMSel <= 2'b01;
		ALUsrc <= 1;
		Write <= 1;
		Read <= 0;
		WB <= 1;
		end
	7'b0000011 : begin
		PCsrc <= 0;
		EnW <= 1;
		IMMSel <= 2'b00;
		ALUsrc <= 1;
		Write <= 0;
		Read <= 1;
		WB <= 0;
		end
	7'b1100011 : begin
		if(Zero == 1)
			PCsrc <= 1;
		else
			PCsrc <= 0;
		EnW <= 0;
		IMMSel <= 2'b10;
		ALUsrc <= 1;
		Write <= 0;
		Read <= 0;
		WB <= 1;
		end
	endcase
end

endmodule