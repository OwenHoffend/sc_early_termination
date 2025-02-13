`timescale 1ns / 1ps
module therm_to_onehot #(parameter W=8)(
    input [W-1:0] therm,
    output logic [W-1:0] onehot
);

assign onehot[W-2:0] = ~therm[W-2:0] & {1'b1, therm[W-3:0]};
assign onehot[W-1] = therm[W-1];

endmodule