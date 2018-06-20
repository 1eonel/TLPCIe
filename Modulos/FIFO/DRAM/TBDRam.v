`timescale 1ns/1ps

`include "DRAM1.v"

module testDRAM1 ();

  reg clk;
  reg we_a;
  reg re_b;
  reg [5:0] addr_a;
  reg [5:0] addr_b;
  reg [7:0] data_a;
  wire [7:0] q_b;

  DRAM1 ram(.data_a(data_a), .addr_a(addr_a), .addr_b(addr_b), .we_a(we_a), .re_b(re_b), .clk(clk), .q_b(q_b));
endmodule
