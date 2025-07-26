module decoder2_4_tb;
  reg a,b,en;
  wire [3:0]D;
  decoder2_4 uut(.a(a), .b(b), .en(en), .D(D));
  initial begin
    $monitor("a=%b, b=%b, en=%b, D=%b",a,b,en,D);
     en=0; a=0; b=0; #10;
  en=0; a=0; b=1; #10;
  en=0; a=1; b=0; #10;
  en=0; a=1; b=1; #10;
  en=1; a=0; b=0; #10;
  en=1; a=0; b=1; #10;
  en=1; a=1; b=0; #10;
  en=1; a=1; b=1; #10;
    $finish;
  end
endmodule
