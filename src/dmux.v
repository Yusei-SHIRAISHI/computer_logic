module DMux (
  input in,
  input sel,
  output a,
  output b
);

  wire nsel;

  not(nsel, sel);

  and(a, in, nsel);
  and(b, in, sel);

endmodule
