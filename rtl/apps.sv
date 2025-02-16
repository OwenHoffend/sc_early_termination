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

module mac(
    input x[3:0],
    input c, 
    output logic z
);
    logic mux1, mux2;
    assign mux1 = x[0] & x[1];
    assign mux2 = x[2] & x[3];
    assign z = c ? mux1 : mux2;
endmodule