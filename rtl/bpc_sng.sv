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
always_comb begin
    for(int i=0; i<S_GROUPS; i++) begin
        S_flat[i*W +: W] = S[i];
    end
    if(NC > 0)
        S_flat[TW-1:TW-1-(NC-1)] = '0;
end

logic [TW-1:0] cnt;
bpc #(.WIDTH(TW)) bpc1(
    .clk(clk),
    .rst_n(rst_n),
    .bp(S_flat),
    .ovf(done),
    .cnt(cnt)
);

always_comb begin
    for(int i=0; i<N; i++) begin
        Xs[i] = cnt[(i * (1-CORR))*W +: W] < Bxs[i];
    end
    for(int i=0; i<NC; i++) begin
        Xcs[i] = cnt[TW-NC+i];
    end
end

endmodule