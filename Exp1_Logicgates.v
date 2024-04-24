module allgates(a,b,c,y1,y2,y3,y4,y5,y6,y7);
input a,b,c;
output y1,y2,y3,y4,y5,y6,y7;
and x1(y1,a,b,c);
or x2(y2,a,b,c);
xor x3(y3,a,b,c);
not x4(y4,a);
nand x5(y5,a,b,c);
nor x6(y6,a,b,c); 
xnor x7(y7,a,b,c);
endmodule
