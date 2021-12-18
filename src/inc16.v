`include "src/add16.v"

module Inc16 (
  input[15:0]  in,
  output[15:0] out
);

  Add16 add16(in, 16'h0001, out);

endmodule
