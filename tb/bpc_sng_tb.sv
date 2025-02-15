`timescale 1ns / 1ps
module bpc_sng_tb;

parameter W = 6;
parameter N = 2;
parameter NC = 1;
parameter CORR = 0;
parameter TW = CORR ? W+NC : W*N+NC;
localparam S_GROUPS = CORR ? 1 : N;

logic clk, rst_n;
logic [W-1:0] Bxs[N-1:0];
logic [W-1:0] S[S_GROUPS-1:0];
logic [N-1:0] Xs;
logic [NC-1:0] Xcs;
logic done;

bpc_sng #(
    .W           (W),
    .TW          (TW),
    .S_GROUPS    (S_GROUPS),
    .N           (N),
    .NC          (NC),
    .CORR        (CORR)
) u_bpc_sng (
    .clk         (clk),
    .rst_n       (rst_n),
    .Bxs         (Bxs),
    .S           (S),
    .Xs          (Xs),
    .Xcs         (Xcs),
    .done        (done)
);

always #5 clk = ~clk;

task reset();
    rst_n = 1; #1;
    rst_n = 0; #1;
    rst_n = 1; #1;
    $display("----");
endtask

always @(posedge clk) begin
    $display("Time=%0t Xs: %b, Xcs: %b, done: %b", $time, Xs, Xcs, done);
end

initial begin
    clk = 0;
    reset();

    Bxs = {6'b100000, 6'b100000};
    S = {6'b011111, 6'b011111};
    //S = {6'b011111};

    wait(done); #20;

    $finish;
end

endmodule