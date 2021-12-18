module Mux (
  input a,
  input b,
  input sel,
  output out
);

  wire nsel;
  wire w1, w2;

  not(nsel, sel);

  and(w1, a, nsel);
  and(w2, b, sel);
  or(out, w1, w2);

endmodule
