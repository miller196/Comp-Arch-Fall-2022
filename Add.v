module Add1(A, B, Cin, Cout, s);

input A, B, Cin;
output Cout, s;

wire b1, b2, b3, b4;

and AND1 (b1, A, B);
and AND2 (b2, A, Cin);
and AND3 (b3, B, Cin);
xor XOR1 (b4, A, Cin);
xor XOR2 (s, b4, B);
or OR1 (Cout, b1, b2, b3); 

endmodule 