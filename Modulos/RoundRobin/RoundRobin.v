module RoundRobin
(
  input reset,
  input req0,
  input req1,
  input req2,
  input req3,
  input [1:0] p0,
  input [1:0] p1,
  input [1:0] p2,
  input [1:0] p3,
  input [1:0] p4,
  input [1:0] p5,
  input [1:0] p6,
  input [1:0] p7,
  input [1:0] p8,
  input [1:0] p9,
  input [1:0] p10,
  input [1:0] p11,
  input [1:0] p12,
  input [1:0] p13,
  input [1:0] p14,
  input [1:0] p15,
   
  input clk,
  output reg valid,
  output reg [1:0] out_id

);

wire [1:0] priority[15:0];

assign priority[0] = p0;
assign priority[1] = p1;
assign priority[2] = p2;
assign priority[3] = p3;
assign priority[4] = p4;
assign priority[5] = p5;
assign priority[6] = p6;
assign priority[7] = p7;
assign priority[8] = p8;
assign priority[9] = p9;
assign priority[10] = p10;
assign priority[11] = p11;
assign priority[12] = p12;
assign priority[13] = p13;
assign priority[14] = p14;
assign priority[15] = p15;

reg [3:0] counter;

// assign valid=0;
// assign out_id = 2'b00;
// assign counter =3'b000;

always @ (posedge clk)
begin
  if (reset) begin

    counter <= 0;
    valid <= 0;
    out_id <= 00;
    end else begin
      case (priority[counter])
        2'b00:
              if (req0) begin
                out_id <= 00;
                valid<=1;
              end else begin
                valid<=0;
              end
        2'b01:
              if (req1) begin
                out_id <= 01;
                valid<=1;
              end else begin
                valid<=0;
              end
        2'b10:
              if (req2) begin
                out_id <= 10;
                valid<=1;
              end else begin
                valid<=0;
              end
        2'b11:
              if (req3) begin
                out_id <= 11;
                valid<=1;
              end else begin
                valid<=0;
              end
      endcase
      counter <= counter + 1;
      end


end

endmodule
