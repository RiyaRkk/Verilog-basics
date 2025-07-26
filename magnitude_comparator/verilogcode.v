module comparator_gatelevel(
  input [3:0]a,b,
  output out);
  wire g1,g2,g3,g0;
  wire e1,e2,e3,e0;
  wire e3g2,e2g1,e1g0;
  
  //checking each values//
  and a3(g3,a[3],~b[3]);//checking if a[3]>b[3]
  xnor x3(e3,a[3],b[3]);//a[3]=b[3]
  and a2(g2,a[2],~b[2]);
  xnor x2(e2,a[2],b[2]);
  and a1(g1,a[1],~b[1]);
  xnor x1(e1,a[1],b[1]);
  and a0(g0,a[0],~b[0]);
  xnor x0(e0,a[0],b[0]);
  
  //combining
  and aa1(e3g2,e3,g2);//if a3 and b3 are equal(e3) and a2>b2(g2)
  and aa2(e2g1,e2,g1);
  and aa3(e1g0,e1,g0);
  
  or out1(out,g3,e3g2,e2g1,e1g0);
endmodule
