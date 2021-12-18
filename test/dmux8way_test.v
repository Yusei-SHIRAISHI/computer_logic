`default_nettype none

`include "src/defs.h"
`include "src/dmux8way.v"

module DMux8WayTest ();

  parameter in = 1'b1;

  // in: (in, b(000), out: (in, 0, 0, 0, 0, 0, 0, 0)
  wire[7:0] out1;
  // in: (in, b(001), out: (0, in, 0, 0, 0, 0, 0, 0)
  wire[7:0] out2;
  // in: (in, b(010), out: (0, 0, in, 0, 0, 0, 0, 0)
  wire[7:0] out3;
  // in: (in, b(011), out: (0, 0, 0, in, 0, 0, 0, 0)
  wire[7:0] out4;
  // in: (in, b(100), out: (0, 0, 0, 0, in, 0, 0, 0)
  wire[7:0] out5;
  // in: (in, b(101), out: (0, 0, 0, 0, 0, in, 0, 0)
  wire[7:0] out6;
  // in: (in, b(110), out: (0, 0, 0, 0, 0, 0, in, 0)
  wire[7:0] out7;
  // in: (in, b(111), out: (0, 0, 0, 0, 0, 0, 0, in)
  wire[7:0] out8;

  DMux8Way dmux8way_1(in, 3'b000, out1[0], out1[1], out1[2], out1[3], out1[4], out1[5], out1[6], out1[7]);
  DMux8Way dmux8way_2(in, 3'b001, out2[0], out2[1], out2[2], out2[3], out2[4], out2[5], out2[6], out2[7]);
  DMux8Way dmux8way_3(in, 3'b010, out3[0], out3[1], out3[2], out3[3], out3[4], out3[5], out3[6], out3[7]);
  DMux8Way dmux8way_4(in, 3'b011, out4[0], out4[1], out4[2], out4[3], out4[4], out4[5], out4[6], out4[7]);
  DMux8Way dmux8way_5(in, 3'b100, out5[0], out5[1], out5[2], out5[3], out5[4], out5[5], out5[6], out5[7]);
  DMux8Way dmux8way_6(in, 3'b101, out6[0], out6[1], out6[2], out6[3], out6[4], out6[5], out6[6], out6[7]);
  DMux8Way dmux8way_7(in, 3'b110, out7[0], out7[1], out7[2], out7[3], out7[4], out7[5], out7[6], out7[7]);
  DMux8Way dmux8way_8(in, 3'b111, out8[0], out8[1], out8[2], out8[3], out8[4], out8[5], out8[6], out8[7]);

  initial begin
    $dumpfile({`VCD_PATH, "/dmux8way.vcd"});
    $dumpvars(0, DMux8WayTest);
    $finish;
  end

endmodule
