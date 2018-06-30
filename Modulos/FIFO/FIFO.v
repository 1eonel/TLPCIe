module DRAM1
(
	input [3:0] data_a,
	input clk, push, pop, reset,
	output reg [3:0] q_b
  output reg error, full, empty, almost_full, almost_empty
);

	reg [3:0] contadorR;
	reg [3:0] contadorW;
	reg vueltaR;
	reg vueltaW;

	DRAM1 ram(.data_a(data_a), .addr_a(contadorW), .addr_b(contadorR), .we_a(push), .re_b(pop), .clk(clk), .q_b(q_b));


always @ (posedge clk) begin
	if (reset == 0) begin
		contadorR <= 0;
		vueltaR <= 0;
		empty <= 1;
		full <= 0;
		almost_full <= 0;
		almost_empty <= 0;
		error <= 0;
		contadorW <= 0;
		vueltaW <= 0;
	end else begin
		if(contadorR==contadorW) begin
			if(vueltaR==vueltaW) begin
				empty <= 1;
				full <= 0;
				almost_full <= 0;
				almost_empty <= 0;
				error <= 0;
			end else begin
				empty <= 0;
				full <= 1;
				almost_full <= 0;
				almost_empty <= 0;
				error <= 0;
			end
		end else if(contadorR>contadorW)begin
			if(vueltaR==vueltaW) begin
				empty <= 0;
				full <= 0;
				almost_full <= 0;
				almost_empty <= 0;
				error <= 1;
			end else begin
				empty <= 0;
				full <= 0;
				error <= 0;
				if (contadorW + 8 - contadorR=<1) begin
					almost_empty <= 1;
					almost_full <= 0;
				end else if (contadorW + 8 - contadorR >= 6) begin
					almost_empty <= 0;
					almost_full <= 1;
				end else begin
					almost_empty <= 0;
					almost_full <= 0;
				end
			end
		end else begin
			if(vueltaR==vueltaW) begin
				empty <= 0;
				full <= 0;
				error <= 0;
				if (contadorW - contadorR=<1) begin
					almost_empty <= 1;
					almost_full <= 0;
				end else if (contadorW - contadorR >= 6) begin
					almost_empty <= 0;
					almost_full <= 1;
				end else begin
					almost_empty <= 0;
					almost_full <= 0;
				end
			end else begin
				empty <= 0;
				full <= 0;
				almost_full <= 0;
				almost_empty <= 0;
				error <= 1;
			end
		end
	end
end


always @ (posedge clk) begin
	if (push) begin
		contadorW <= contadorW == 7 ? 0 : contadorW+1;
	end

	if (pull) begin
		contadorR <= contadorR == 7 ? 0 : contadorR+1;
	end
end





endmodule
