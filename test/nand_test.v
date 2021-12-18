`default_nettype none

`include "src/defs.h"
`include "src/nand.v"

module NandTest ();

  // in: (0, 0), out: 1
  wire out1;
  // in: (1, 0), out: 1
  wire out2;
  // in: (0, 1), out: 1
  wire out3;
  // in: (1, 1), out: 0
  wire out4;

  Nand nand1(1'b0, 1'b0, out1);
  Nand nand2(1'b1, 1'b0, out2);
  Nand nand3(1'b0, 1'b1, out3);
  Nand nand4(1'b1, 1'b1, out4);

  initial begin
    $dumpfile({`VCD_PATH, "/nand.vcd"});
    $dumpvars(0, NandTest);
    $finish;
  end

endmodule
