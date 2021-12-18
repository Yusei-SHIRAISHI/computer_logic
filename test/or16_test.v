`default_nettype none

`include "src/defs.h"
`include "src/or16.v"

module Or16Test ();

  // in: (F0F0, FF00)  out: FFF0
  wire[15:0] out;

  Or16 or16(16'hF0F0, 16'hFF00, out);

  initial begin
    $dumpfile({`VCD_PATH, "/or16.vcd"});
    $dumpvars(0, Or16Test);
    $finish;
  end

endmodule
