module top (
  input logic clk,
  input logic rx,
  input logic sw2_n,
  input logic tip,
  input logic ring,
  output wire tx,
  output wire r_n,
  output wire g_n,
  output wire b_n
);

  wire r, g, b, sw2;
  assign r_n = ~r,
    g_n = ~g,
    b_n = ~b,
    sw2 = ~sw2_n;

  manta manta_inst (
    .clk(clk),
    .rst(0),
    .rx(rx),
    .tx(tx),
    .sw2(sw2),
    .r(r),
    .g(g),
    .b(b),
    .tip(tip),
    .ring(ring)
  );

endmodule
