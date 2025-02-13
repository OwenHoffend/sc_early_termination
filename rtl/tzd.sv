`timescale 1ns / 1ps
module tzd #(parameter W)(
    input [W-1:0] Bx,
    output logic [W-1:0] z
);

integer i;
always_comb begin
    z[0] = Bx[0];
    for(i=1; i<W; i++) begin
        z[i] = z[i-1] | Bx[i];
    end
    z = ~z;
end

endmodule