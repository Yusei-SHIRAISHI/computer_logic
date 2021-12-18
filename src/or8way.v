module Or8Way (
  input[7:0] in,
  output out
);

  wire [7:1] w;

  or(w[1], in[0], in[1]);

  genvar i;
  for(i=2; i<8; i=i+1) begin
    or(w[i], w[i-1], in[i]);
  end

  assign out = w[7];

endmodule
