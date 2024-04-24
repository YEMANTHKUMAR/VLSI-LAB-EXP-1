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
module ripplecarry(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire c1,c2,c3;
fulladder(a[0],b[0],cin,sum[0],c1);
fulladder(a[1],b[1],c1,sum[1],c2);
fulladder(a[2],b[2],c2,sum[2],c3);
fulladder(a[3],b[3],c3,sum[3],c4);
endmodule
