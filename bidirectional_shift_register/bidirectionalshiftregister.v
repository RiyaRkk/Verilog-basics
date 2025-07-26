module universal_shift_register(
input reset,clk,load,shift_right,shift_left,
  input [3:0]data_in,
  input serial_left_data,serial_right_data,
  output reg [3:0]q);
  always@(posedge clk)
    begin
      if (reset)
        q<=4'b0000;
      else if (load)
        q<=data_in;
      else if(shift_right)
        q<={serial_right_data,q[3:1]};
      else if(shift_left)
        q<={q[2:0],serial_left_data};
      else
        q<=q;
    end
endmodule
