`default_nettype none

`include "src/defs.h"
`include "src/or8way.v"

module Or8WayTest ();

  // in: (00)  out: 0
  wire out1;
  // in: (01)  out: 1
  wire out2;

  Or8Way or8way1(8'h00, out1);
  Or8Way or8way2(8'h01, out2);

  initial begin
    $dumpfile({`VCD_PATH, "/or8way.vcd"});
    $dumpvars(0, Or8WayTest);
    $finish;
  end

endmodule
