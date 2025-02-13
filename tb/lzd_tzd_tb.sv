`timescale 1ns / 1ps

module lzd_tzd_tb;

parameter W = 6;

logic [W-1:0] Bx, z_lzd, z_tzd;

lzd #(
    .W     (W)
) u_lzd (
    .Bx    (Bx),
    .z     (z_lzd)
);

tzd #(
    .W(W)
) u_tzd (
    .Bx    (Bx),
    .z     (z_tzd)
);

initial begin
    $monitor("Bx: %b, LZD: %b, TZD: %b", Bx, z_lzd, z_tzd);
    Bx = 6'b001100;
    #10
    Bx = 6'b111111;
    #10
    Bx = 6'b000000;
    #10
    Bx = 6'b110000;
    #10
    Bx = 6'b000011;
    #10
    $finish;
end

endmodule