`default_nettype none

`include "src/defs.h"
`include "src/mux8way16.v"

module Mux8Way16Test ();

  // in: (a, b, c, d, e, f, g, h, sel)

  parameter a = 16'h000F;
  parameter b = 16'h00F0;
  parameter c = 16'h00FF;
  parameter d = 16'h0F00;
  parameter e = 16'h0F0F;
  parameter f = 16'h0FF0;
  parameter g = 16'h0FFF;
  parameter h = 16'hF000;

  // in: (a, b, c, d, e, f, g, h, b(000)), out: a
  wire[15:0] out1;
  // in: (a, b, c, d, e, f, g, h, b(001)), out: b
  wire[15:0] out2;
  // in: (a, b, c, d, e, f, g, h, b(010)), out: c
  wire[15:0] out3;
  // in: (a, b, c, d, e, f, g, h, b(011)), out: d
  wire[15:0] out4;
  // in: (a, b, c, d, e, f, g, h, b(100)), out: e
  wire[15:0] out5;
  // in: (a, b, c, d, e, f, g, h, b(101)), out: f
  wire[15:0] out6;
  // in: (a, b, c, d, e, f, g, h, b(110)), out: g
  wire[15:0] out7;
  // in: (a, b, c, d, e, f, g, h, b(111)), out: h
  wire[15:0] out8;

  Mux8Way16 mux8way16_1(a, b, c, d, e, f, g, h, 3'b000, out1);
  Mux8Way16 mux8way16_2(a, b, c, d, e, f, g, h, 3'b001, out2);
  Mux8Way16 mux8way16_3(a, b, c, d, e, f, g, h, 3'b010, out3);
  Mux8Way16 mux8way16_4(a, b, c, d, e, f, g, h, 3'b011, out4);
  Mux8Way16 mux8way16_5(a, b, c, d, e, f, g, h, 3'b100, out5);
  Mux8Way16 mux8way16_6(a, b, c, d, e, f, g, h, 3'b101, out6);
  Mux8Way16 mux8way16_7(a, b, c, d, e, f, g, h, 3'b110, out7);
  Mux8Way16 mux8way16_8(a, b, c, d, e, f, g, h, 3'b111, out8);

  initial begin
    $dumpfile({`VCD_PATH, "/mux8way16.vcd"});
    $dumpvars(0, Mux8Way16Test);
    $finish;
  end

endmodule
