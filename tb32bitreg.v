//Register Test Bench

`timescale 1ns/1ps
module tb32bitreg;

reg clk, rst;

reg [4:0] rd;
reg [4:0] rs1;
reg [4:0] rs2;

reg [31:0] Write;

reg readOrWrite;

wire [31:0] RegOutput1;
wire [31:0] RegOutput2;


register test(clk, rst, rd, rs1, rs2, Write, readOrWrite, RegOutput1, RegOutput2);

initial
begin

 clk = 0;
 rst = 0;
 rd = 0;
 rs1 = 0;
 rs2 = 0;
 Write = 0;
 readOrWrite = 0;
 

#100 readOrWrite = 1;
#100 clk = 0;

#100 clk = 1; rst = 0; rd = 0; rs1 = 0; rs2 = 7; Write = 5; readOrWrite = 0;

#100 clk = 0; rd = 7; readOrWrite = 0; Write = 10;

#100 clk = 1;

#100 clk = 0; readOrWrite = 1;

#100 clk = 1;

#100 clk = 0; rd = 0; readOrWrite = 0; Write = 1;

#100 clk = 1;

#100 clk = 0; readOrWrite = 1;

#100 clk = 1;

#100 clk = 0; rd = 8; readOrWrite = 0; Write= 2;

#100 clk = 1;

#100 clk = 0; rs2 = 8; readOrWrite = 1;

#100 clk = 1;

end
endmodule 