`default_nettype none

`include "src/defs.h"
`include "src/inc16.v"

module Inc16Test ();

  parameter FFFF = 16'hFFFF;
  parameter zero = 16'h0000;

  // in: 0x0000, out: 0x0001
  wire[15:0] out1;

  // in: 0x000F, out: 0x0010
  wire[15:0] out2;

  // in: 0xFFFF, out: 0x0000
  wire[15:0] out3;

  Inc16 inc16_1(16'h0000, out1);
  Inc16 inc16_2(16'h000F, out2);
  Inc16 inc16_3(16'hFFFF, out3);

  initial begin
    $dumpfile({`VCD_PATH, "/inc16.vcd"});
    $dumpvars(0, Inc16Test);
    $finish;
  end

endmodule
