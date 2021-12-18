module Xor (
  input a,
  input b,
  output out
);

  wire na;
  wire nb;
  wire w1;
  wire w2;

  not(na, a);
  not(nb, b);

  and(w1, a, nb);
  and(w2, b, na);

  or(out, w1, w2);

endmodule
