`default_nettype none

`include "src/defs.h"
`include "src/full_adder.v"

module FullAdderTest ();

  // out: (carry, sum)

  // in: (0, 0, 0), out: (0, 0)
  wire carry1;
  wire sum1;

  // in: (0, 0, 1), out: (0, 1)
  wire carry2;
  wire sum2;

  // in: (0, 1, 0), out: (0, 1)
  wire carry3;
  wire sum3;

  // in: (0, 1, 1), out: (1, 0)
  wire carry4;
  wire sum4;

  // in: (1, 0, 0), out: (0, 1)
  wire carry5;
  wire sum5;

  // in: (1, 0, 1), out: (1, 0)
  wire carry6;
  wire sum6;

  // in: (1, 1, 0), out: (1, 0)
  wire carry7;
  wire sum7;

  // in: (1, 1, 1), out: (1, 1)
  wire carry8;
  wire sum8;

  FullAdder full_adder1(1'b0, 1'b0, 1'b0, sum1, carry1);
  FullAdder full_adder2(1'b0, 1'b0, 1'b1, sum2, carry2);
  FullAdder full_adder3(1'b0, 1'b1, 1'b0, sum3, carry3);
  FullAdder full_adder4(1'b0, 1'b1, 1'b1, sum4, carry4);
  FullAdder full_adder5(1'b1, 1'b0, 1'b0, sum5, carry5);
  FullAdder full_adder6(1'b1, 1'b0, 1'b1, sum6, carry6);
  FullAdder full_adder7(1'b1, 1'b1, 1'b0, sum7, carry7);
  FullAdder full_adder8(1'b1, 1'b1, 1'b1, sum8, carry8);

  initial begin
    $dumpfile({`VCD_PATH, "/full_adder.vcd"});
    $dumpvars(0, FullAdderTest);
    $finish;
  end

endmodule
