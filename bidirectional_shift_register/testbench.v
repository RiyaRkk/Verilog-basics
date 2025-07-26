module shift_register_tb;
  reg reset,clk,load,shift_right,shift_left;
  reg [3:0]data_in;
  reg serial_left_data,serial_right_data;
  wire [3:0]q;
  universal_shift_register uut(reset,clk,load,shift_right,shift_left,data_in,serial_left_data,serial_right_data,q);
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end 
  
  initial begin
     $monitor("time=%0t | q=%b | load=%b shift_right=%b shift_left=%b data_in=%b sr_data=%b sl_data=%b reset=%b",
             $time, q, load, shift_right, shift_left, data_in, serial_right_data, serial_left_data, reset);

    reset = 1; load = 0; shift_right = 0; shift_left = 0;
    data_in = 4'b0000; serial_left_data = 0; serial_right_data = 0;
    #10;

    // release reset
    reset = 0;
    #10;

    // parallel load 4'b1010
    load = 1; data_in = 4'b1010;
    #10;
    load = 0;
    #10;

    // shift right with serial_right_data=1
    shift_right = 1; serial_right_data = 1;
    #10;
    shift_right = 0;
    #10;

    // shift left with serial_left_data=0
    shift_left = 1; serial_left_data = 0;
    #10;
    shift_left = 0;
    #10;

    // hold current value
    load = 0; shift_left = 0; shift_right = 0;
    #10;

    // load 4'b1111
    load = 1; data_in = 4'b1111;
    #10;
    load = 0;
    #10;

    // shift right with serial_right_data=0
    shift_right = 1; serial_right_data = 0;
    #10;
    shift_right = 0;
    #10;

    // shift left with serial_left_data=1
    shift_left = 1; serial_left_data = 1;
    #10;
    shift_left = 0;
    #10;
$finish;
  end
endmodule
