`default_nettype none

`include "src/defs.h"
`include "src/dmux4way.v"

module DMux4WayTest ();

  parameter in = 1'b1;

  // in: (in, b(00), out: (in, 0, 0, 0)
  wire[3:0] out1;
  // in: (in, b(01), out: (0, in, 0, 0)
  wire[3:0] out2;
  // in: (in, b(10), out: (0, 0, in, 0)
  wire[3:0] out3;
  // in: (in, b(11), out: (0, 0, 0, in)
  wire[3:0] out4;

  DMux4Way dmux4way_1(in, 2'b00, out1[0], out1[1], out1[2], out1[3]);
  DMux4Way dmux4way_2(in, 2'b01, out2[0], out2[1], out2[2], out2[3]);
  DMux4Way dmux4way_3(in, 2'b10, out3[0], out3[1], out3[2], out3[3]);
  DMux4Way dmux4way_4(in, 2'b11, out4[0], out4[1], out4[2], out4[3]);

  initial begin
    $dumpfile({`VCD_PATH, "/dmux4way.vcd"});
    $dumpvars(0, DMux4WayTest);
    $finish;
  end

endmodule
