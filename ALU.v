module ALU(Value1, Value2, OP, Clock, ResultC, Status);

input Clock;
input[5:0] OP;
input[31:0] Value1, Value2;

output reg [3:0] Status;
output reg [3:0] ResultC;

wire [31:0] RAdd, RAnd, ROr, RNor, RXnor, RRLS, RLLS;
wire[3:0] Stat;

Arithmetic Add (RAdd, Stat[3], Stat[2], Stat[0], Value1, Value2);
LAnd And (RAnd, Value1, Value2); 
LNor Nor (RNor, Value1, Value2);
LLS LLS (RLLS, Value1, Value2);
LOr Or (ROr, Value1, Value2);
RLS RLS (RRLS, Value1, Value2);
LXor Xor (RXor, Value1, Value2);
always @(posedge Clock)

begin 
		case(OP)
		6'b010000 : begin
		ResultC <= RAdd;
		Status[3] <= Stat[3];
		Status[2] <= Stat[2];
		Status[0] <= Stat[0];
		end
		
		6'b000100 : ResultC <= RRLS;
		6'b001011 : ResultC <= RXor;
		6'b001010 : ResultC <= RNor;
		6'b001001 : ResultC <= ROr;
		6'b001000 : ResultC <= RAnd;
		6'b000101 : ResultC <= RLLS;

		endcase
	end

endmodule

	

	



	