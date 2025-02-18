`timescale 1ns / 1ps
module vsbc_comb #(
    parameter W,
    parameter TW,
    parameter NC,
    parameter S_GROUPS
)(
    input clk, rst_n,
    input Z,
    input [W-1:0] S[S_GROUPS-1:0],
    input [W-1:0] ell,
    output logic [TW-1:0] Bz
);

logic [TW-1:0] Bz_unshifted;
logic [$clog2(TW)-1:0] S_apc;

logic [TW-1:0] S_flat;
always_comb begin
    for(int i=0; i<S_GROUPS; i++) begin
        S_flat[i*W +: W] = S[i];
    end
    if(NC > 0)
        S_flat[TW-1:TW-1-(NC-1)] = '0;

    S_flat[W-1:0] = S_flat[W-1:0] & ~ell;

    $display("S_flat: %b, S_apc: %b", S_flat, S_apc);
end

apc #(
    .W            (TW)
) s_apc_inst (
    .data_in      (S_flat),
    .count_out    (S_apc)
);

sbc #(
    .TW       (TW)
) u_sbc (
    .clk      (clk),
    .rst_n    (rst_n),
    .Z        (Z),
    .Bz       (Bz_unshifted)
);

barrel_shift #(
    .W               (TW)
) u_barrel_shift (
    .data_in         (Bz_unshifted),
    .shift_amount    (S_apc),
    .data_out        (Bz)
);

endmodule