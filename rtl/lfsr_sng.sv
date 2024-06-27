`timescale 1ns / 1ps
`include "rtl/lfsr_polys.sv"
import lfsr_polys_pkg::*;

module lfsr_sng #(
    parameter WIDTH = 8,
    parameter LFSR_POLY = LFSR_8_POLYS[0], //x^8 + x^4 + x^3 + x^2 + 1 --> 0001 1101 --> 1D (MSB is inferred)
    parameter START_STATE = 1,
    parameter NUM_INPUTS = 8
)(
    input clk, rst_n,
    input [WIDTH-1:0] Bxs[NUM_INPUTS-1:0],
    output logic [NUM_INPUTS-1:0] Xs
);

logic [WIDTH-1:0] state_in[NUM_INPUTS-1:0];
logic [WIDTH-1:0] state_out[NUM_INPUTS-1:0];

lfsr #(
    .LFSR_WIDTH(WIDTH),
    .LFSR_POLY(LFSR_POLY),
    .DATA_WIDTH(1)
)
lfsr_inst[NUM_INPUTS-1:0] (
    .data_in({NUM_INPUTS{1'b0}}),
    .state_in(state_in),
    .data_out(),
    .state_out(state_out)
);

always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        for(integer j=0; j<NUM_INPUTS; j++) begin
            state_in[j] <= START_STATE;
        end
    end else begin
        state_in <= state_out;
    end
end

integer i;
always_comb begin
    for(i=0; i<NUM_INPUTS; i++) begin
        Xs[i] = state_out[i] < Bxs[i];
    end
end

endmodule

module lfsr_sng_corr #(
    parameter WIDTH = 8,
    parameter LFSR_POLY = LFSR_8_POLYS[0], //x^8 + x^4 + x^3 + x^2 + 1 --> 0001 1101 --> 1D (MSB is inferred)
    parameter START_STATE = 1,
    parameter NUM_INPUTS = 1
)(
    input clk, rst_n,
    input [WIDTH-1:0] Bxs[NUM_INPUTS-1:0],
    output logic [NUM_INPUTS-1:0] Xs
);

logic [WIDTH-1:0] state_in;
logic [WIDTH-1:0] state_out;

lfsr #(
    .LFSR_WIDTH(WIDTH),
    .LFSR_POLY(LFSR_POLY),
    .DATA_WIDTH(1)
)
lfsr_inst (
    .data_in(1'b0),
    .state_in(state_in),
    .data_out(),
    .state_out(state_out)
);

always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        state_in <= START_STATE;
    end else begin
        state_in <= state_out;
    end
end

integer i;
always_comb begin
    for(i=0; i<NUM_INPUTS; i++) begin
        Xs[i] = state_out < Bxs[i];
    end
end

endmodule