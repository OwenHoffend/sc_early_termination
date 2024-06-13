`timescale 1ns / 1ps
module lfsr_tb_basic;

// width of LFSR
parameter LFSR_WIDTH = 31;
// LFSR polynomial
parameter LFSR_POLY = 31'h10000001;
// LFSR configuration: "GALOIS", "FIBONACCI"
parameter LFSR_CONFIG = "FIBONACCI";
// LFSR feed forward enable
parameter LFSR_FEED_FORWARD = 0;
// bit-reverse input and output
parameter REVERSE = 0;
// width of data input
parameter DATA_WIDTH = 8;
// implementation style: "AUTO", "LOOP", "REDUCTION"
parameter STYLE = "AUTO";

logic clk = 0;
logic [DATA_WIDTH-1:0] data_in = 0;
logic [LFSR_WIDTH-1:0] state_in = 0;
logic [DATA_WIDTH-1:0] data_out;
logic [LFSR_WIDTH-1:0] state_out;

lfsr #(
    .LFSR_WIDTH(LFSR_WIDTH),
    .LFSR_POLY(LFSR_POLY),
    .LFSR_CONFIG(LFSR_CONFIG),
    .LFSR_FEED_FORWARD(LFSR_FEED_FORWARD),
    .REVERSE(REVERSE),
    .DATA_WIDTH(DATA_WIDTH),
    .STYLE(STYLE)
)
UUT (
    .data_in(data_in),
    .state_in(state_in),
    .data_out(data_out),
    .state_out(state_out)
);

always #5 clk = ~clk;

always @(posedge clk) begin
    state_in <= state_out;
end

initial begin
    clk = 0;
    state_in[0] = 1'b1; //make initial seed nonzero
    $monitor($time, " dout='b%b", state_out);
    repeat(20) @(posedge clk);
    $finish;
end

endmodule