`timescale 1ns/1ps
module adder (
  input clk,
  input [31:0] in1,
  input [31:0] in2,
  output reg [31:0] out
);

  always @(posedge clk) begin
    out <= in1 + in2;
  end

endmodule
