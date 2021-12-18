module Or16 (
  input[15:0]  a,
  input[15:0]  b,
  output[15:0] out
);

  genvar i;
  for(i=0; i<16; i=i+1) begin
    or(out[i], a[i], b[i]);
  end

endmodule
