`timescale 1ns / 1ps
module pret #(
    parameter W,
    parameter N,
    parameter NC,
    parameter CORR,
    localparam TW = CORR ? W + NC : W*N+NC,
    localparam S_GROUPS = CORR ? 1 : N
)(
    input clk, rst_n,
    input [W-1:0] Bxs [N-1:0],
    output logic [N-1:0] Xs,
    output logic [NC-1:0] Xcs,
    input Z, 
    output logic [TW-1:0] Bz,
    output logic done
);

logic [W-1:0] S[S_GROUPS-1:0];
logic [W-1:0] ell;

prb #(
    .W           (W),
    .N           (N),
    .S_GROUPS    (S_GROUPS),
    .CORR        (CORR)
) u_prb (
    .Bxs         (Bxs),
    .S           (S),
    .ell         (ell)
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

vsbc_comb #(
    .W           (W),
    .TW          (TW),
    .NC          (NC),
    .S_GROUPS    (S_GROUPS)
) u_vsbc_comb (
    .clk         (clk),
    .rst_n       (rst_n),
    .Z           (Z),
    .S           (S),
    .ell         (ell),
    .Bz          (Bz)
);

endmodule