`timescale 1ns / 1ps
`include "rtl/lfsr_polys.sv"
import lfsr_polys_pkg::*;
module lfsr_sng_tb;

// Parameters
parameter W = 8;
parameter N = 2;
parameter NC = 0;
parameter START_STATE = 1;
parameter LFSR_POLY = LFSR_8_POLYS[0]; //x^8 + x^4 + x^3 + x^2 + 1 --> 0001 1101 --> 1D (MSB is inferred)
parameter LFSR_CONST_POLY = LFSR_4_POLYS[0];
parameter CORR = 1;

// Signals
logic clk;
logic rst_n;
logic [W-1:0] Bxs[N-1:0];
logic done;
logic [N-1:0] Xs;
logic [NC-1:0] Xcs;

//Detect output probabilities
real out_cnts[N-1:0];
real cycle_count;
always @(posedge clk) begin
    cycle_count += 1.0;
    foreach(Xs[i]) begin
        if(Xs[i]) out_cnts[i] += 1.0;
        $display("Cycle: %g, input: %d, pz: %b, SC value: %g", 
            cycle_count, i, Xs[i], out_cnts[i] / cycle_count);
    end
end

task begin_SC_test(input [W-1:0] Bxs_inst[N-1:0]);
    Bxs = Bxs_inst;
    out_cnts = '{N{0.0}};
    cycle_count = 0.0;
    reset();

    wait(done);
endtask

//LFSR doesn't have dedicated done signal
assign done = (cycle_count == 2.0 ** W);

lfsr_sng #(
    .W                  (W),
    .N                  (N),
    .NC                 (NC),
    .LFSR_POLY          (LFSR_POLY),
    .LFSR_CONST_POLY    (LFSR_CONST_POLY),
    .START_STATE        (START_STATE),
    .CORR               (CORR)
) u_lfsr_sng (
    .clk                (clk),
    .rst_n              (rst_n),
    .Bxs                (Bxs),
    .Xs                 (Xs),
    .Xcs                (Xcs)
);

// Clock generation
always #5 clk = ~clk;

task reset();
    clk = 0;
    rst_n = 1; #1;
    rst_n = 0; #1;
    rst_n = 1; #1;
    $display("----");
endtask

initial begin
    begin_SC_test({
        {8'b1100_0000}, 
        {8'b1000_0000}
    }); //0.75, 0.5
    begin_SC_test({
        {8'b0000_0011}, 
        {8'b0000_0011}
    }); //3/256, 3/256 (0.01171875)
    $finish;
end

endmodule