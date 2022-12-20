module RAM_TB();

reg [31:0] din;
reg [7:0] addr;
reg clk, rw;
wire [31:0] dout;

RAM DUT(addr, rw, clk, din, dout);

initial
clk = 1'b0;
    always begin
    #5 clk = ~clk;
end

initial begin
rw = 1'b1;
#2560 rw = 1'b0;
end

initial
addr <= 8'b00000000;

always @(negedge clk) begin
    din = {$random, $random};
    addr = addr+8'b00000001;
end

initial begin
#5120 $stop;
end
endmodule
