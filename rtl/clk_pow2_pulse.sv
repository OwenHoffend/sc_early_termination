`timescale 1ns / 1ps
module clk_pow2_pulse #(
    parameter TW
)(
    input clk, rst_n,
    output logic pulse
);

logic [TW-1:0] cnt, next_cnt; 
always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnt <= 1;
    end else begin
        cnt <= next_cnt;
    end
end

always_comb begin
    next_cnt = cnt + 1;
    pulse = ((cnt & (cnt - 1)) == 0);
    //$display("cnt: %b, pulse: %b", cnt, pulse);
end

endmodule