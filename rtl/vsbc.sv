`timescale 1ns / 1ps
module vsbc #(
    parameter W,
    parameter TW
)(
    input clk, rst_n,
    input Z,
    input rshift,
    input [W-1:0] k_init,
    output logic [TW-1:0] Bz
);

logic [TW:0] cshreg, next_cshreg;
logic [TW:0] kshreg, next_kshreg;
always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cshreg <= 0;
        kshreg <= {k_init, {(TW-W+1){1'b0}}};
    end else begin
        cshreg <= next_cshreg;
        kshreg <= next_kshreg;
    end
end

assign Bz = cshreg[TW-1:0];

always_comb begin
    next_cshreg = Z ? cshreg + kshreg : cshreg;
    next_kshreg = kshreg;
    if(rshift) begin
        next_cshreg = {1'b0, next_cshreg[TW:1]};
        next_kshreg = {1'b0, next_kshreg[TW:1]};
    end
    //$display("time: %0t, Z: %b, rshift: %b, cshreg: %b, next_cshreg: %b, kshreg: %b, next_kshreg: %b", $time, Z, rshift, cshreg, next_cshreg, kshreg, next_kshreg);
end

endmodule