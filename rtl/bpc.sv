`timescale 1ns / 1ps
module bpc #(parameter WIDTH=8)(
    input clk, rst_n,
    input [WIDTH-1:0] bp,
    output logic ovf,
    output logic [WIDTH-1:0] cnt
);

logic [WIDTH-1:0] carry_gen, next_cnt;
logic [WIDTH:0] carry;

always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= 0;
    end else begin
        cnt <= next_cnt;
    end
end

integer i;
always_comb begin
    carry_gen = cnt | bp;
    carry[0] = 1'b1;
    for(i=1; i<WIDTH+1; i++) begin
        carry[i] = carry[i-1] & carry_gen[i-1];
    end
    next_cnt = cnt ^ (carry[WIDTH-1:0] & ~bp);
    ovf = carry[WIDTH];
end

endmodule