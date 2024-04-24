module halfsubractor(a,b,borrow,diff);
input a,b;
output borrow,diff;
xor g1(diff,a,b);
and g2(borrow,~a,b);
endmodule
