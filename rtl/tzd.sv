`timescale 1ns / 1ps
module tzd #(parameter WIDTH=8)(
    input [WIDTH-1:0] Bx,
    input [WIDTH-1:0] trunc,
    output logic [WIDTH-1:0] z
);

/*
The "trunc" signal is a thermometer encoded
signal representing the degree of static ET 
truncation that should be applied.

For example, if the Bx signal is 4 bits, and
trunc = 0011, then only the first 2 bits are
actually used
*/

logic [WIDTH-1:0] Bx_trunc;

integer i;
always_comb begin
    Bx_trunc = Bx & ~trunc;
    z[0] = Bx_trunc[0];
    for(i=1; i<WIDTH; i++) begin
        z[i] = z[i-1] | Bx_trunc[i];
    end
end

endmodule