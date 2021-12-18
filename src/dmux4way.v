`include "src/dmux.v"

module DMux4Way (
  input in,
  input[1:0] sel,
  output a,
  output b,
  output c,
  output d
);

  wire w1;
  wire w2;

  DMux dmux1(in, sel[1], w1, w2);
  DMux dmux2(w1, sel[0], a, b);
  DMux dmux3(w2, sel[0], c, d);

endmodule
