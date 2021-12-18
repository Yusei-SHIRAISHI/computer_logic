`default_nettype none

`include "src/defs.h"
`include "src/not16.v"

module Not16Test ();

  // in: 00FF, out: FF00
  wire[15:0] out;

  Not16 not16(16'h00FF, out);

  initial begin
    $dumpfile({`VCD_PATH, "/not16.vcd"});
    $dumpvars(0, Not16Test);
    $finish;
  end

endmodule
