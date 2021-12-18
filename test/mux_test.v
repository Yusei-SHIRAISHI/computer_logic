`default_nettype none

`include "src/defs.h"
`include "src/mux.v"

module MuxTest ();

  // in: (a, b, sel)

  // in: (0, 0, 0), out: 0
  wire out1;
  // in: (0, 1, 0), out: 0
  wire out2;
  // in: (1, 0, 0), out: 1
  wire out3;
  // in: (1, 1, 0), out: 1
  wire out4;
  // in: (0, 0, 1), out: 0
  wire out5;
  // in: (0, 1, 1), out: 1
  wire out6;
  // in: (1, 0, 1), out: 0
  wire out7;
  // in: (1, 1, 1), out: 1
  wire out8;

  Mux mux1(1'b0, 1'b0, 1'b0, out1);
  Mux mux2(1'b0, 1'b1, 1'b0, out2);
  Mux mux3(1'b1, 1'b0, 1'b0, out3);
  Mux mux4(1'b1, 1'b1, 1'b0, out4);
  Mux mux5(1'b0, 1'b0, 1'b1, out5);
  Mux mux6(1'b0, 1'b1, 1'b1, out6);
  Mux mux7(1'b1, 1'b0, 1'b1, out7);
  Mux mux8(1'b1, 1'b1, 1'b1, out8);

  initial begin
    $dumpfile({`VCD_PATH, "/mux.vcd"});
    $dumpvars(0, MuxTest);
    $finish;
  end

endmodule
