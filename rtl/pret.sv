`timescale 1ns / 1ps
module pret #(
    parameter W=8,
    parameter N=8,
    parameter NC=0,
    parameter CORR=0,
    localparam TW = CORR ? W + NC : W*N+NC,
    localparam S_GROUPS = CORR ? 1 : N
)(
    input clk, rst_n,
    input [W-1:0] Bxs [N-1:0],
    output logic [N-1:0] X,
    input Z, 
    output logic [TW-1:0] Bz,
    output logic done
);

bpc_sng #(
    .W               (W),
    .TW              (TW),
    .S_GROUPS        (S_GROUPS),
    .N               (N),
    .NC              (NC),
    .CORR            (CORR)
) u_bpc_sng (
    .clk             (clk),
    .rst_n           (rst_n),
    .Bxs             (Bxs),
    .S               (S),
    .Xs              (Xs),
    .Xcs             (Xcs),
    .done            (done)
);

vsbc #(
    .W         (W),
    .TW        (TW)
) u_vsbc (
    .clk       (clk),
    .rst_n     (rst_n),
    .Z         (Z),
    .rshift    (rshift),
    .k_init    (k_init),
    .Bz        (Bz)
);


endmodule