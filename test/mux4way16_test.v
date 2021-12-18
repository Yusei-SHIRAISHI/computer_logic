`default_nettype none

`include "src/defs.h"
`include "src/mux4way16.v"

module Mux4Way16Test ();

  // in: (a, b, c, d, sel)
  parameter a = 16'hF000;
  parameter b = 16'h0F00;
  parameter c = 16'h00F0;
  parameter d = 16'h000F;

  // in: (a, b, c, d, b(00)), out: a
  wire[15:0] out1;
  // in: (a, b, c, d, b(01)), out: b
  wire[15:0] out2;
  // in: (a, b, c, d, b(10)), out: c
  wire[15:0] out3;
  // in: (a, b, c, d, b(11)), out: d
  wire[15:0] out4;

  Mux4Way16 mux4way16_1(a, b, c, d, 2'b00, out1);
  Mux4Way16 mux4way16_2(a, b, c, d, 2'b01, out2);
  Mux4Way16 mux4way16_3(a, b, c, d, 2'b10, out3);
  Mux4Way16 mux4way16_4(a, b, c, d, 2'b11, out4);

  initial begin
    $dumpfile({`VCD_PATH, "/mux4way16.vcd"});
    $dumpvars(0, Mux4Way16Test);
    $finish;
  end

endmodule
