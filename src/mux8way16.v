`include "src/mux4way16.v"

module Mux8Way16 (
  input[15:0] a,
  input[15:0] b,
  input[15:0] c,
  input[15:0] d,
  input[15:0] e,
  input[15:0] f,
  input[15:0] g,
  input[15:0] h,
  input [2:0] sel,
  output[15:0] out
);

  wire[15:0] w1;
  wire[15:0] w2;

  Mux4Way16 mux4way16_1(a, b, c, d, sel[1:0], w1);
  Mux4Way16 mux4way16_2(e, f, g, h, sel[1:0], w2);
  Mux16 mux16(w1, w2, sel[2], out);

endmodule
