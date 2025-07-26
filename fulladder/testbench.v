module ripplecarry_tb;
  wire [3:0]sum;
  wire co;
  reg [3:0]a,b;
  reg ci;
  ripplecarry_adder uut(a,b,ci,sum,co);
  initial begin 
    $monitor("a=%b, b=%b, ci=%b, sum=%b, co=%b",a,b,ci,sum,co);
    a = 4'b0000; b = 4'b0000; ci = 0; #10;
    a = 4'b0001; b = 4'b0001; ci = 0; #10;
    a = 4'b0010; b = 4'b0011; ci = 0; #10;
    a = 4'b0100; b = 4'b0101; ci = 1; #10;
    a = 4'b1000; b = 4'b1000; ci = 0; #10;
    a = 4'b1111; b = 4'b0001; ci = 0; #10;
    a = 4'b1111; b = 4'b1111; ci = 0; #10;
    a = 4'b1111; b = 4'b1111; ci = 1; #10;
    $finish;
  end
endmodule
