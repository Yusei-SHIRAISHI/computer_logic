`default_nettype none

`include "src/defs.h"
`include "src/harf_adder.v"

module HarfAdderTest ();

  // out: (carry, sum)

  // in:  (0, 0), out: (0, 0)
  wire carry1;
  wire sum1;

  // in:  (0, 1), out: (0, 1)
  wire carry2;
  wire sum2;

  // in:  (1, 0), out: (0, 1)
  wire carry3;
  wire sum3;

  // in:  (1, 1), out: (1, 0)
  wire carry4;
  wire sum4;

  HarfAdder harf_adder1(1'b0, 1'b0, sum1, carry1);
  HarfAdder harf_adder2(1'b0, 1'b1, sum2, carry2);
  HarfAdder harf_adder3(1'b1, 1'b0, sum3, carry3);
  HarfAdder harf_adder4(1'b1, 1'b1, sum4, carry4);

  initial begin
    $dumpfile({`VCD_PATH, "/harf_adder.vcd"});
    $dumpvars(0, HarfAdderTest);
    $finish;
  end

endmodule
