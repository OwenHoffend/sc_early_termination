module bpc_sng #(
    parameter W,
    parameter TW,
    parameter S_GROUPS,
    parameter N,
    parameter NC,
    parameter CORR
)(
    input clk, rst_n,
    input [W-1:0] Bxs[N-1:0],
    input [W-1:0] S[S_GROUPS-1:0],
    output logic [N-1:0] Xs,
    output logic [NC-1:0] Xcs,
    output logic done
);

logic [TW-1:0] S_flat;
integer i;
always_comb begin
    for(i=0; i<S_GROUPS; i++) begin
        S_flat[i*W +: W] = S[i];
    end
    S_flat[TW-1 -: NC] = {NC{1'b0}};
end

logic [TW-1:0] cnt;
bpc #(.WIDTH(TW)) bpc1(
    .clk(clk),
    .rst_n(rst_n),
    .bp(S_flat),
    .ovf(done),
    .cnt(cnt)
);

integer j;
always_comb begin
    for(j=0; j<N; j++) begin
        Xs[j] = cnt[(j * CORR)*W +: W] < Bxs[j];
    end
    for(j=0; j<NC; j++) begin
        Xcs[j] = cnt[TW-NC+j];
    end
end

endmodule