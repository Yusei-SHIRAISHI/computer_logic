module Not16 (
  input[15:0]  in,
  output[15:0] out
);

  genvar i;
  for(i=0; i<16; i=i+1) begin
    not(out[i], in[i]);
  end

endmodule
