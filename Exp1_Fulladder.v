module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
xor x1(w1,a,b);
xor x2(sum,w1,c);
and x3(w2,a,b);
and x4(w3,w1,w2);
or x5(carry,w3,w2);
endmodule

