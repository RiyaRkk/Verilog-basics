module comparator_tb;
  reg [3:0]a,b;
  wire out;
  comparator uut(.a(a), .b(b), .out(out));
  initial begin
    $monitor("a=%b, b=%b, output=%b",a,b,out);
    a=4'b0000; b=4'b0000; #10;
  a=4'b0001; b=4'b0000; #10;
  a=4'b0010; b=4'b0001; #10;
  a=4'b0011; b=4'b0100; #10;
  a=4'b1111; b=4'b1110; #10;
  a=4'b1111; b=4'b1111; #10;
  a=4'b1000; b=4'b1000; #10;
  a=4'b0101; b=4'b0110; #10;
  a=4'b0110; b=4'b0101; #10;
  a=4'b0000; b=4'b1111; #10;
    $finish;
  end
endmodule
