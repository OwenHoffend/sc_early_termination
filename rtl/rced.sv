module rced(
    input x[3:0], 
    input c,
    output logic z
);
    logic mux1, mux2;
    assign mux1 = x[0] ^ x[3];
    assign mux2 = x[1] ^ x[2];
    assign z = c ? mux1 : mux2;
endmodule

module rced_full_SC #(
    parameter WIDTH = 8,
    parameter SNG_TYPE = "LFSR"
)(
    input clk, rst_n,
    input [WIDTH-1:0] Bxs[3:0]
);

logic [3:0] Xs;

generate;
    if(SNG_TYPE == "LFSR") begin
        
    end else if(SNG_TYPE == "CAPE") begin
        
    end else begin
        
    end
endgenerate

rced rc1 (

);

endmodule