module fulladder(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  wire w1,w2,w3;
  xor x1(w1,a,b);
  xor x2(sum,w1,cin);
  and a1(w2,w1,cin);
  and a2(w3,a,b);
  or o1(cout,w3,w2);
  endmodule
module ripplecarry_adder(
  input [3:0]a,b,
  input ci,
  output [3:0]sum,
  output co 
);
  wire c1,c2,c3;
  fulladder f0(a[0],b[0],ci,sum[0],c1);
  fulladder f1(a[1],b[1],c1,sum[1],c2);
  fulladder f2(a[2],b[2],c2,sum[2],c3);
  fulladder f3(a[3],b[3],c3,sum[3],co);
endmodule
