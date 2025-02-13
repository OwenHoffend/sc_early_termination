`timescale 1ns / 1ps
module vsbc_tb;

parameter W = 6;
parameter TW = 16;
parameter BSL = 16;

logic clk, rst_n;
logic Z, rshift;
logic [W-1:0] k_init;
logic [TW-1:0] Bz;
logic [BSL-1:0] Z_bs;

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

always #5 clk = ~clk;

task reset();
    rst_n = 1; #1;
    rst_n = 0; #1;
    rst_n = 1; #1;
    $display("----");
endtask

initial begin
    clk = 0;
    k_init = 6'b100000;
    Z_bs = 16'b1111_1111_0000_1111;

    reset();
    for(int i=0; i<BSL+1; i++) begin
        Z = Z_bs[i];
        rshift = (i > 0 && (i & (i - 1)) == 0);
        wait(clk);
        wait(~clk);
    end
    $finish;
end

// Display simulation results
always @(posedge clk) begin
    $display("Time=%0t Z: %b rshift: %b k_init: %b, Bz: %b", $time, Z, rshift, k_init, Bz);
end

endmodule