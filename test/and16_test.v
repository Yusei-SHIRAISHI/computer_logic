`default_nettype none

`include "src/defs.h"
`include "src/and16.v"

module And16Test ();

  // in: (F0F0, FF00)  out: F000
  wire[15:0] out;

  And16 and16(16'hF0F0, 16'hFF00, out);

  initial begin
    $dumpfile({`VCD_PATH, "/and16.vcd"});
    $dumpvars(0, And16Test);
    $finish;
  end

endmodule
