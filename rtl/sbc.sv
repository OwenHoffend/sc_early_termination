module sbc #(
    parameter WIDTH = 10
) (
    input clk, rst_n, pz,
    output logic [WIDTH-1:0] Bz
);

logic [WIDTH-1:0] next_Bz;

always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        Bz <= 0;
    end else begin
        Bz <= next_Bz;
    end
end

always_comb begin
    next_Bz = Bz + 1;
end

endmodule