`include "src/xor.v"

module HarfAdder (
  input a,
  input b,
  output sum,
  output carry
);

  Xor _xor(a, b, sum);
  and(carry, a, b);

endmodule
