module DatapthControl_TB();

reg [6:0] OPCode;
reg Zero;

wire PCsrc, EnW, ALUsrc, RAMWrite, WB, RAMRead;
wire [1:0] IMMSelect;

Control dut (PCsrc, EnW, IMMSelect, ALUsrc, RAMWrite, WB, RAMRead, Zero, OPCode);

initial begin
	OPCode <= 7'b0;
	Zero <= 0;
	#100 OPCode <= 7'b0110011;
	#100 OPCode <= 7'b0010011;
	#100 OPCode <= 7'b0100011;
	#100 OPCode <= 7'b1100011;
	Zero <= 0;
	#100 OPCode <= 7'b0000011;
	#100 OPCode <= 7'b1100011;
	Zero <= 1;
	#1000 $stop;
end

endmodule