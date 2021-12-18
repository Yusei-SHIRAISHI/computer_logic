`default_nettype none

`include "src/defs.h"
`include "src/xor.v"

module XorTest ();

  // in: (0, 0), out: 0
  wire out1;
  // in: (1, 0), out: 1
  wire out2;
  // in: (0, 1), out: 1
  wire out3;
  // in: (1, 1), out: 0
  wire out4;

  Xor xor1(1'b0, 1'b0, out1);
  Xor xor2(1'b1, 1'b0, out2);
  Xor xor3(1'b0, 1'b1, out3);
  Xor xor4(1'b1, 1'b1, out4);

  initial begin
    $dumpfile({`VCD_PATH, "/xor.vcd"});
    $dumpvars(0, XorTest);
  end

endmodule
