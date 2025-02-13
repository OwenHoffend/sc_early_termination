`timescale 1ns / 1ps
module vsbc #(
    parameter W,
    parameter B_W
)(
    input clk, rst_n,
    input Z,
    input rshift,
    input [W-1:0] k_init,
    output logic [B_W-1:0] Bz
);

logic [B_W-1:0] cshreg, kshreg;
logic [B_W-1:0] next_cshreg, next_kshreg;
always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cshreg <= 0;
        kshreg <= {k_init, {(B_W-W){1'b0}}};
    end else begin
        cshreg <= next_cshreg;
        kshreg <= next_kshreg;
    end
end

assign Bz = cshreg;

always_comb begin
    next_cshreg = Z ? cshreg + kshreg : cshreg;
    next_kshreg = kshreg;
    if(rshift) begin
        next_cshreg = {1'b0, next_cshreg[B_W-1:1]};
        next_kshreg = {1'b0, next_kshreg[B_W-1:1]};
    end
end

endmodule