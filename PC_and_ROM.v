module PC_and_ROM(PC, out);

input [31:0] PC;
reg [31:0] Instruction[3:0];

output reg [31:0] out;

integer a;

always @(*)
begin
 a = (PC % 4);
 
 out <= Instruction[a];

	
		
end
endmodule

