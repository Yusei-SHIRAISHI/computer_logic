`include "src/mux16.v"

module Mux4Way16 (
  input[15:0] a,
  input[15:0] b,
  input[15:0] c,
  input[15:0] d,
  input [1:0] sel,
  output[15:0] out
);

  wire[15:0] w1;
  wire[15:0] w2;

  Mux16 mux16_1(a, b, sel[0], w1);
  Mux16 mux16_2(c, d, sel[0], w2);

  Mux16 mux16_3(w1, w2, sel[1], out);

endmodule
