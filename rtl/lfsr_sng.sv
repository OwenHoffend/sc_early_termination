`timescale 1ns / 1ps
`include "rtl/lfsr_polys.sv"
import lfsr_polys_pkg::*;

module lfsr_sng #(
    parameter W,
    parameter N,
    parameter NC, 
    parameter LFSR_POLY,
    parameter LFSR_CONST_POLY,
    parameter START_STATE = 1,
    parameter START_CONST_STATE = 1,
    parameter CORR
)(
    input clk, rst_n,
    input [W-1:0] Bxs[N-1:0],
    output logic [N-1:0] Xs,
    output logic [NC-1:0] Xcs
);

localparam CW = (NC < 4) ? 4 : NC;
localparam N_STAR = CORR ? 1 : N;
logic [W-1:0] state_in[N_STAR-1:0];
logic [W-1:0] state_out[N_STAR-1:0];
logic [CW-1:0] state_const_in;
logic [CW-1:0] state_const_out;
generate
    if(CORR) begin
        lfsr #(
            .LFSR_WIDTH(W),
            .LFSR_POLY(LFSR_POLY),
            .DATA_WIDTH(1)
        )
        lfsr_inst (
            .data_in({N_STAR{1'b0}}),
            .state_in(state_in[0]),
            .data_out(),
            .state_out(state_out[0])
        );
    end else begin
        lfsr #(
            .LFSR_WIDTH(W),
            .LFSR_POLY(LFSR_POLY),
            .DATA_WIDTH(1)
        )
        lfsr_inst[N-1:0] (
            .data_in({N_STAR{1'b0}}),
            .state_in(state_in),
            .data_out(),
            .state_out(state_out)
        );
        end
    if(NC > 0) begin
        lfsr #(
            .LFSR_WIDTH(CW),
            .LFSR_POLY(LFSR_CONST_POLY),
            .DATA_WIDTH(1)
        )
        lfsr_inst (
            .data_in({NC{1'b0}}),
            .state_in(state_const_in),
            .data_out(),
            .state_out(state_const_out)
        );
    end
endgenerate

always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        for(int i=0; i<N; i++) begin
            state_in[i*(1-CORR)] <= START_STATE;
            state_const_in <= START_CONST_STATE;
        end
    end else begin
        state_in <= state_out;
        state_const_in <= state_const_out;
    end
end

always_comb begin
    for(int i=0; i<N; i++) begin
        Xs[i] = state_out[i*(1-CORR)] < Bxs[i];
    end
    for(int i=0; i<NC; i++) begin
        Xcs[i] = state_const_out[CW-NC+i];
    end
end

endmodule