`default_nettype none

`include "src/defs.h"
`include "src/dmux.v"

module DMuxTest ();

  // in:  (in, sel)
  // out: (a, b)

  // in: (0, 0), out: (0, 0)
  wire out1_a;
  wire out1_b;

  // in: (1, 0), out: (1, 0)
  wire out2_a;
  wire out2_b;

  // in: (0, 1), out: (0, 0)
  wire out3_a;
  wire out3_b;

  // in: (1, 1), out: (0, 1)
  wire out4_a;
  wire out4_b;

  DMux dmux1(1'b0, 1'b0, out1_a, out1_b);
  DMux dmux2(1'b1, 1'b0, out2_a, out2_b);
  DMux dmux3(1'b0, 1'b1, out3_a, out3_b);
  DMux dmux4(1'b1, 1'b1, out4_a, out4_b);

  initial begin
    $dumpfile({`VCD_PATH, "/dmux.vcd"});
    $dumpvars(0, DMuxTest);
    $finish;
  end

endmodule
