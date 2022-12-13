module DatapathControl(PCsrc, EnW, IMMSelect, ALUsrc, RAMWrite, WB, RAMRead, Zero, OPCode);

output reg [1:0] IMMSelect;
output reg PCsrc, EnW, ALUsrc, RAMWrite, WB, RAMRead;

input Zero;
input [6:0] OPCode;

always @(OPCode)
begin
	case(OPCode)
	7'b0110011 : begin
		WB <= 1;
		EnW <= 1;
		IMMSelect <= 2'b00;
		ALUsrc <= 0;
		RAMWrite <= 0;
		RAMRead <= 0;
		PCsrc <= 0;
		end
	7'b0010011 : begin
		WB <= 1;
		EnW <= 1;
		IMMSelect <= 2'b00;
		ALUsrc <= 1;
		RAMWrite <= 0;
		RAMRead <= 0;
		PCsrc <= 0;
		end
	7'b0100011 : begin
		WB <= 1;
		EnW <= 0;
		IMMSelect <= 2'b01;
		ALUsrc <= 1;
		RAMWrite <= 1;
		RAMRead <= 0;
		PCsrc <= 0;
		end
	7'b0000011 : begin
		WB <= 0;
		EnW <= 1;
		IMMSelect <= 2'b00;
		ALUsrc <= 1;
		RAMWrite <= 0;
		RAMRead <= 1;
		PCsrc <= 0;
		end
	7'b1100011 : begin
		if(Zero == 1)
			PCsrc <= 1;
		else
			PCsrc <= 0;
		WB <= 1;
		EnW <= 0;
		IMMSelect <= 2'b10;
		ALUsrc <= 1;
		RAMWrite <= 0;
		RAMRead <= 0;
		end
	endcase
end

endmodule