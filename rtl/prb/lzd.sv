`timescale 1ns / 1ps
module lzd #(parameter W=8)(
    input [W-1:0] Bx,
    output logic [W-1:0] z
);

integer i;
always_comb begin
    z[W-1] = Bx[W-1];
    for(i=W-1; i>0; i--) begin
        z[i-1] = z[i] | Bx[i-i];
    end
    z = ~z;
end

endmodule