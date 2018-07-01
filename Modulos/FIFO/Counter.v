
`timescale 1ns/1ps

module counter();

  reg clk;
  reg push;
  reg pop;
  reg reset;
  reg [3:0] contadorW;
  reg [3:0] contadorR;
  reg vueltaR;
  reg vueltaW;


  always @ (posedge clk) begin
    if (push) begin
      if (contadorW == 7) begin
        contadorW <= 0;
        vueltaW <= vueltaW == 1 ? 0 : 1;
      end else begin
        contadorW <= contadorW+4'b0001;
      end
      // contadorW <= contadorW == 4'b0111 ? 0 : contadorW+4'b0001;
    end

    if (pop) begin
      if (contadorR == 7) begin
        contadorR <= 0;
        vueltaR <= vueltaR == 1 ? 0 : 1;
      end else begin
        contadorR <= contadorR+4'b0001;
      end
      //contadorR <= contadorR == 7 ? 0 : contadorR+1;
    end
  end

  always # 4 clk = ~clk;

  initial begin
    $dumpfile("gtkws/testCounter.vcd");
    $dumpvars;
  end

  initial begin

    contadorR<= 4'b0000;
    contadorW<= 4'b0000;
    clk<= 0;
    push<= 1;
    pop<= 0;
    reset<= 0;
    vueltaR<= 0;
    vueltaW<= 0;

    # 4
    @ (posedge clk);



    # 4
    @ (posedge clk);


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
