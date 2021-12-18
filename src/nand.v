module Nand (
  input a,
  input b,
  output out
);

  wire w;

  and(w, a, b);
  not(out, w);

endmodule
