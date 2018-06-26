`timescale 1ns/1ps

`include "DRAM1.v"

module testDRAM1 ();

  reg clk;
  reg we_a;
  reg re_b;
  reg [2:0] addr_a;
  reg [2:0] addr_b;
  reg [3:0] data_a;
  wire [3:0] q_b;

  DRAM1 ram(.data_a(data_a), .addr_a(addr_a), .addr_b(addr_b), .we_a(we_a), .re_b(re_b), .clk(clk), .q_b(q_b));

  always # 4 clk = ~clk;

  initial begin
    $dumpfile("gtkws/testRAM1.vcd");
    $dumpvars;
  end

  initial begin
    clk <= 0;
    we_a <= 0;
    re_b <= 0;
    addr_a <= 3'b000;
    addr_b <= 3'b000;
    data_a <= 4'b0001;

    # 4
    @ (posedge clk);

    we_a <= 1;

    # 4
    @ (posedge clk);

    we_a <= 0;
    re_b <= 1;
    addr_a <= 3'b010;

    # 4
    @ (posedge clk);

    data_a <= 4'b0010;
    we_a <= 1;
    addr_b <= 3'b010;

    # 32
    @ (posedge clk);




    $finish;

  end


endmodule
