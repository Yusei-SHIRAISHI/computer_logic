`default_nettype none

`include "src/defs.h"
`include "src/add16.v"

module Add16Test ();

  parameter FFFF = 16'hFFFF;
  parameter zero = 16'h0000;

  // out: (carry, sum)

  // in: (0x0000, 0x0000), out: (0x0000)
  wire[15:0] out1;

  // in: (0xFFFF, 0x0000), out: (0xFFFF)
  wire[15:0] out2;

  // in: (0x0000, 0xFFFF), out: (0xFFFF)
  wire[15:0] out3;

  // in: (0x0008, 0x0008), out: (0x0010)
  wire[15:0] out4;

  // in: (0xFFFF, 0xFFFF), out: (0xFFFE)
  wire[15:0] out5;

  Add16 add16_1(zero, zero, out1);
  Add16 add16_2(FFFF, zero, out2);
  Add16 add16_3(zero, FFFF, out3);
  Add16 add16_4(16'h0008, 16'h0008, out4);
  Add16 add16_5(FFFF, FFFF, out5);

  initial begin
    $dumpfile({`VCD_PATH, "/add16.vcd"});
    $dumpvars(0, Add16Test);
    $finish;
  end

endmodule
