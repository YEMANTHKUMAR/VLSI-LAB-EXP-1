module fullsubractor(a,b,bin,d,bout);
input a,b,bin;
output d,bout;
wire w1,w2,w3;
xor (d,a,w1);
xor(w1,b,bin);
and(w2,~b,bin);
and (w3,~w1,a);
or (bout,w1,w2);
endmodule
