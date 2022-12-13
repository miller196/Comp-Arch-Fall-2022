module Add(pco, pci);

input [31:0] pci;
output [31:0] pco;


assign pco = pci + 32'd4;

endmodule