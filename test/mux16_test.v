`default_nettype none

`include "src/defs.h"
`include "src/mux16.v"

module Mux16Test ();

  // in: (a, b, sel)

  // in: (FF00, 00FF, 0), out: FF00
  wire[15:0] out1;
  // in: (FF00, 00FF, 1), out: 00FF
  wire[15:0] out2;

  Mux16 mux1(16'hFF00, 16'h00FF, 1'b0, out1);
  Mux16 mux2(16'hFF00, 16'h00FF, 1'b1, out2);

  initial begin
    $dumpfile({`VCD_PATH, "/mux16.vcd"});
    $dumpvars(0, Mux16Test);
    $finish;
  end

endmodule
