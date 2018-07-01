

`include "RoundRobin.v"

module tbRRobin ();

  reg reset;
  reg clk;

  reg req0;
  reg req1;
  reg req2;
  reg req3;

  reg [1:0] p0;
  reg [1:0] p1;
  reg [1:0] p2;
  reg [1:0] p3;
  reg [1:0] p4;
  reg [1:0] p5;
  reg [1:0] p6;
  reg [1:0] p7;
  reg [1:0] p8;
  reg [1:0] p9;
  reg [1:0] p10;
  reg [1:0] p11;
  reg [1:0] p12;
  reg [1:0] p13;
  reg [1:0] p14;
  reg [1:0] p15;


  wire valid;
  wire [1:0] out_id;

  RoundRobin rndRob(.reset(reset), .clk(clk), .req0(req0), .req1(req1), .req2(req2), .req3(req3), .p0(p0), .p1(p1),
            .p2(p2), .p3(p3), .p4(p4), .p5(p5), .p6(p6), .p7(p7), .p8(p8), .p9(p9), .p10(p10), .p11(p11), .p12(p12), .p13(p13),
            .p14(p14), .p15(p15), .valid(valid), .out_id(out_id));

  always #2 clk = !clk;

  initial begin
    $dumpfile("gtkws/testRRobin.vcd");
    $dumpvars;
  end

  initial begin
    reset <= 1;
    clk <= 0;
    p0 <= 2'b00;
    p1 <= 2'b00;
    p2 <= 2'b00;
    p3 <= 2'b11;
    p4 <= 2'b01;
    p5 <= 2'b10;
    p6 <= 2'b01;
    p7 <= 2'b01;
    p8 <= 2'b11;
    p9 <= 2'b01;
    p10 <= 2'b01;
    p11 <= 2'b00;
    p12 <= 2'b10;
    p13 <= 2'b10;
    p14 <= 2'b01;
    p15 <= 2'b00;

    req0 <= 0;
    req1 <= 0;
    req2 <= 1;
    req3 <= 0;

    #2

    reset <= 0;

    #2

    req0 <= 1;
    req1 <= 0;
    req2 <= 0;
    req3 <= 0;
    #8

    req0 <= 0;
    req1 <= 0;
    req2 <= 1;
    req3 <= 0;

    #16

    req0 <= 0;
    req1 <= 0;
    req2 <= 0;
    req3 <= 1;

    #16

    req0 <= 1;
    req1 <= 0;
    req2 <= 0;
    req3 <= 0;

    #16

    req0 <= 0;
    req1 <= 0;
    req2 <= 0;
    req3 <= 1;

    #16

    req0 <= 0;
    req1 <= 1;
    req2 <= 0;
    req3 <= 1;

    #32

    $finish;

  end


endmodule
