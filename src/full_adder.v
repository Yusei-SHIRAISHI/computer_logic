`include "src/harf_adder.v"

module FullAdder (
  input a,
  input b,
  input c,
  output sum,
  output carry
);

  wire a_b_sum;
  wire a_b_carry;
  wire w1, w2, w3;

  HarfAdder harf_adder(a, b, a_b_sum, a_b_carry);

  // carry = (a_b_sum & c) | a_b_carry
  and(w1, a_b_sum, c);
  or(carry, w1, a_b_carry);

  // sum = (a_b_carry & c) | xor(c, a_b_sum)
  and(w2, a_b_carry, c);
  Xor _xor(c, a_b_sum, w3);
  or(sum, w2, w3);

endmodule
