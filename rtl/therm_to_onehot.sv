`timescale 1ns / 1ps
module therm_to_onehot #(parameter W=8)(
    input [W-1:0] therm,
    output logic [W-1:0] onehot
);

always_comb begin
    onehot[W-1] = ~therm[W-1];
    onehot[W-2:0] = therm[W-1:1] & ~therm[W-2:0];
    onehot[0] |= therm[0];
end

endmodule