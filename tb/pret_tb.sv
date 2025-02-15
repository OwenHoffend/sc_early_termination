`timescale 1ns / 1ps
module pret_tb;

parameter W = 6;
parameter N = 2;
parameter NC = 0;
parameter CORR = 0;
parameter TW = CORR ? W+NC : W*N+NC;

logic clk, rst_n;
logic [W-1:0] Bxs[N-1:0];
logic [N-1:0] Xs;
logic [NC-1:0] Xcs;
logic [TW-1:0] Bz;
logic Z; 
logic done;

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

//Target application circuit
always_comb begin
    Z = Xs[0] & Xs[1];
end

always #5 clk = ~clk;

task reset();
    rst_n = 1; #1;
    rst_n = 0; #1;
    rst_n = 1; #1;
    $display("----");
endtask

always @(posedge clk) begin
    $display("Time=%0t Xs: %b, Xcs: %b, Z: %b, Bz: %b, done: %b",
        $time, Xs, Xcs, Z, Bz, done);
end

initial begin
    Bxs = {6'b101000, 6'b010000};
    clk = 0;
    reset();
    wait(done); #20;

    $finish;
end

endmodule