`include "src/full_adder.v"

module Add16 (
  input[15:0]  a,
  input[15:0]  b,
  output[15:0] out
);

  wire[15:0] carry;

  FullAdder full_adder(a[0], b[0], 1'b0, out[0], carry[0]);

  genvar i;
  for(i=1; i<16; i=i+1) begin
    FullAdder full_adder(a[i], b[i], carry[i-1], out[i], carry[i]);
  end

endmodule
