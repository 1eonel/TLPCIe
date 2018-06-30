`timescale 1ns/1ps

`include "cmos_cells.v"
`include "FIFO_sint.v"

  module testFIFO ();
  reg [3:0] data_a;
  reg clk;
  reg push;
  reg pop;
  reg reset;
  wire [3:0] q_b;
  wire error;
  wire full;
  wire empty;
  wire almost_full;
  wire almost_empty;

  FIFO fifo(.data_a(data_a), .clk(clk), .push(push), .pop(pop), .reset(reset), .q_b(q_b), .error(error), .full(full), .empty(empty), .almost_full(almost_full), .almost_empty(almost_empty));

  always # 4 clk = ~clk;

  initial begin
    $dumpfile("gtkws/testFIFO_sint.vcd");
    $dumpvars;
  end


  initial begin

    data_a<= 4'b0000;
    clk<= 0;
    push<= 0;
    pop<= 0;
    reset<= 1;

    # 4
    @ (posedge clk);

    reset<= 0;
    push<= 1;

    # 4
    @ (posedge clk);

    data_a<= 4'b0001;

    # 4
    @ (posedge clk);


    data_a<= 4'b0010;

    # 4
    @ (posedge clk);

    data_a<= 4'b0011;

    # 4
    @ (posedge clk);

    data_a<= 4'b0100;

    # 4
    @ (posedge clk);
    pop<= 1;
    data_a<= 4'b0101;

    # 4
    @ (posedge clk);

    data_a<= 4'b0110;

    # 4
    @ (posedge clk);

    data_a<= 4'b0111;

    # 4
    @ (posedge clk);

    # 4
    @ (posedge clk);

    # 4
    @ (posedge clk);

    # 4
    @ (posedge clk);






    $finish;
  end


endmodule
