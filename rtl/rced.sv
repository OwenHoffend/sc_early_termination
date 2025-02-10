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

module and_gate(input x, input y, output logic z); 
    assign z = x & y; 
endmodule

module mux_gate(input x, input y, input s, output logic z);
    assign z = s ? x : y;
endmodule

//Unfinished work
/*
module rced_full_SC #(
    parameter WIDTH = 8,
    parameter SNG_TYPE = "LFSR"
)(
    input clk, rst_n,
    input [WIDTH-1:0] Bxs[3:0],
    output logic Bz
);

logic [3:0] Xs;
logic c;

generate
    if(SNG_TYPE == "LFSR") begin
        lfsr_sng_corr #(
            .WIDTH(WIDTH),
            .NUM_INPUTS(4)
        )(
            .clk(clk),
            .rst_n(rst_n),
            .Bxs(Bxs),
            .Xs(Xs)
        );
    end else begin

    end
endgenerate

logic pz;

rced rc1 (

);

sbc sbc1 (
    .clk(clk),
    .rst_n(rst_n),
    .pz(pz),
    .Bz(Bz)
);

endmodule
*/