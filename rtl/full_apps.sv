`include "rtl/lfsr_polys.sv"
import lfsr_polys_pkg::*;
module rced_pret #(
    parameter W = 4,
    parameter N = 4,
    parameter NC = 1, 
    parameter CORR = 1,
    localparam TW = CORR ? W + NC : W*N+NC
)(
    input clk, rst_n,
    input [W-1:0] Bxs [N-1:0],
    output logic [TW-1:0] Bz,
    output logic done    
);

logic [N-1:0] Xs;
logic [NC-1:0] Xcs;
logic Z;

pret #(
    .W           (W),
    .N           (N),
    .NC          (NC),
    .CORR        (CORR)
) u_pret (
    .clk         (clk),
    .rst_n       (rst_n),
    .Bxs         (Bxs),
    .Xs          (Xs),
    .Xcs         (Xcs),
    .Z           (Z),
    .Bz          (Bz),
    .done        (done)
);

rced u_rced (
    .x    (Xs),
    .c    (Xcs),
    .z    (Z)
);

endmodule

module rced_lfsr #(
    parameter W = 4,
    parameter N = 4,
    parameter NC = 1, 
    parameter CORR = 1,
    localparam TW = CORR ? W + NC : W*N+NC
)(
    input clk, rst_n,
    input [W-1:0] Bxs [N-1:0],
    output logic [TW-1:0] Bz  
);

parameter LFSR_POLY = LFSR_4_POLYS[0]; //x^8 + x^4 + x^3 + x^2 + 1 --> 0001 1101 --> 1D (MSB is inferred)
parameter LFSR_CONST_POLY = LFSR_4_POLYS[0];
logic [N-1:0] Xs;
logic [NC-1:0] Xcs;
logic Z;

lfsr_sng #(
    .W                  (W),
    .N                  (N),
    .NC                 (NC),
    .LFSR_POLY          (LFSR_POLY),
    .LFSR_CONST_POLY    (LFSR_CONST_POLY),
    .CORR               (CORR)
) u_lfsr_sng (
    .clk                (clk),
    .rst_n              (rst_n),
    .Bxs                (Bxs),
    .Xs                 (Xs),
    .Xcs                (Xcs)
);

rced u_rced (
    .x    (Xs),
    .c    (Xcs),
    .z    (Z)
);

sbc #(
    .TW       (TW)
) u_sbc (
    .clk      (clk),
    .rst_n    (rst_n),
    .Z        (Z),
    .Bz       (Bz)
);

endmodule