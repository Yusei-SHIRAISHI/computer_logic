`include "src/dmux4way.v"

module DMux8Way (
  input in,
  input[2:0] sel,
  output a,
  output b,
  output c,
  output d,
  output e,
  output f,
  output g,
  output h
);

  wire[3:0] w;

  DMux4Way dmux4way_1(in, sel[2:1], w[0], w[1], w[2], w[3]);
  DMux dmux1(w[0], sel[0], a, b);
  DMux dmux2(w[1], sel[0], c, d);
  DMux dmux3(w[2], sel[0], e, f);
  DMux dmux4(w[3], sel[0], g, h);

endmodule
