`timescale 1ns / 1ps

module prb_tb;

parameter W = 6;
parameter N = 2;
parameter CORR = 0;
localparam S_GROUPS = CORR ? 1 : N;

logic [W-1:0] Bxs[N-1:0];
logic [W-1:0] S[S_GROUPS-1:0];
logic [W-1:0] k_init;

prb #(
    .W           (W),
    .N           (N),
    .S_GROUPS    (S_GROUPS),
    .CORR        (CORR)
) u_prb (
    .Bxs         (Bxs),
    .S           (S),
    .k_init      (k_init)
);

task log();
    for(int i=0; i<N; i++) $display("Bxs: %b, S: %b, k_init: %b", Bxs[i], S[i], k_init);
endtask

initial begin
    Bxs = {6'b001100, 6'b011000};
    #10 log();
    Bxs = {6'b000000, 6'b111111};
    #10 log();
    Bxs = {6'b000000, 6'b000000};
    #10 log();
    #10 $finish;
end

endmodule