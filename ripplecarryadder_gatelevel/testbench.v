module ripplecarryadder_g_tb;
  reg [3:0]a,b;
  reg c0;
  wire [3:0]sum;
  wire cout;
  
  ripplecarryadder_gate uut(a,b,c0,sum,cout);
  initial begin
    $monitor("a=%b, b=%b, c0=%b, sum=%b, cout=%b",a,b,c0,sum,cout);
    
    a=4'b0001;b=4'b0101;c0=0;#10;
    a=4'b0011;b=4'b0110;c0=0;#10;
    a=4'b0111;b=4'b0011;c0=1;#10;
    a=4'b1000;b=4'b0100;c0=1;#10;
    $finish;
  end
endmodule
    
