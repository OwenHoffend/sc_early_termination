module sbc #(
    parameter TW
) (
    input clk, rst_n, Z,
    output logic [TW-1:0] Bz
);

logic [TW-1:0] next_Bz;

always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        Bz <= 0;
    end else begin
        Bz <= next_Bz;
    end
end

always_comb begin
    if(Z)
        next_Bz = Bz + 1;
    else
        next_Bz = Bz;
end

endmodule