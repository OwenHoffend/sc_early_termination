`timescale 1ns / 1ps
module prb #(
    parameter W, 
    parameter N, 
    parameter S_GROUPS,
    parameter CORR
)(
    input [W-1:0] Bxs[N-1:0],
    output logic [W-1:0] S[S_GROUPS-1:0],
    output logic [W-1:0] k_init
);

logic [W-1:0] tzds[S_GROUPS-1:0];
generate
    if(CORR==0) begin
        tzd #(.W(W)) tzd_gen[N-1:0] (
            .Bx(Bxs),
            .z(tzds)
        );
    end else begin
        tzd #(.W(W)) tzd1 (
            .Bx(Bx_or),
            .z(tzds)
        );
    end
endgenerate

logic Bx_or [W-1:0];
logic [W-1:0] ell;
lzd #(.W(W)) lzd1 (
    .Bx(Bx_or),
    .z(ell)
);

integer i, j;
always_comb begin
    for(i=0; i<W; i++) begin
        Bx_or[i] = 1'b0;
        for(j=0; j<N; j++) begin
            Bx_or[i] = Bx_or[i] | Bxs[j][i];
        end
    end
    for(i=0; i<S_GROUPS; i++) begin
        S[i] = tzds[i] | ell[i];
    end
end

endmodule