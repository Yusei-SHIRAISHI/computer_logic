`include "src/mux.v"

module Mux16 (
  input[15:0] a,
  input[15:0] b,
  input sel,
  output[15:0] out
);

  genvar i;
  for(i=0; i<16; i=i+1) begin
    Mux mux(a[i], b[i], sel, out[i]);
  end

endmodule
