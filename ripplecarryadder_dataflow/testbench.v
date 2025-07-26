module ripple_df_tb;
  reg [3:0]a,b;
  reg c0;
  wire [3:0]sum;
  wire cout; 
  ripple_df uut(.a(a), .b(b), .c0(c0), .sum(sum), .cout(cout));
  initial begin
    $monitor("a=%b, b=%b, c0=%b, sum=%b, cout=%b",a,b,c0,sum,cout);
     a=4'b0000; b=4'b0000; c0=0; #10;
 	 a=4'b0001; b=4'b0001; c0=0; #10;
  	 a=4'b0011; b=4'b0101; c0=0; #10;
  	 a=4'b0111; b=4'b0001; c0=1; #10;
 	 a=4'b1111; b=4'b0001; c0=0; #10;
 	 a=4'b1111; b=4'b1111; c0=0; #10;
 	 a=4'b1001; b=4'b0110; c0=1; #10;
  	 a=4'b0100; b=4'b1011; c0=0; #10;
  	 a=4'b1111; b=4'b0000; c0=1; #10;
  	 a=4'b0000; b=4'b1111; c0=1; #10;
    $finish;
  end 
endmodule
