`timescale 1ns / 1ps

module cape_CMP_logic #(
    parameter WIDTH = 8,
    parameter NUM_INPUTS = 4
)(
    input [WIDTH*NUM_INPUTS-1:0] cnts,
    input [WIDTH-1:0] Bxs[NUM_INPUTS-1:0],
    output logic [NUM_INPUTS-1:0] Xs
);

logic [WIDTH-1:0] cape_wiring[NUM_INPUTS-1:0];

integer i, j;
always_comb begin
    for(i=0; i<NUM_INPUTS; i++) begin
        for(j=0; j<WIDTH; j++) begin
            cape_wiring[i][j] = cnts[j*NUM_INPUTS+i];
        end
        Xs[i] = cape_wiring[i] < Bxs[i];
    end
end

endmodule

module cape #(
    parameter WIDTH = 4,
    parameter NUM_INPUTS = 2
)(
    input clk, rst_n,
    input [WIDTH-1:0] Bxs[NUM_INPUTS-1:0],
    output logic done,
    output logic [NUM_INPUTS-1:0] Xs
);

logic [WIDTH*NUM_INPUTS-1:0] cnts, next_cnts;
logic next_done;

cape_CMP_logic #(
    .WIDTH(WIDTH),
    .NUM_INPUTS(NUM_INPUTS)
) c1 (
    .cnts(cnts),
    .Bxs(Bxs),
    .Xs(Xs)
);

always_comb begin
    next_cnts = cnts + 1'b1;
    next_done = cnts[WIDTH*NUM_INPUTS-1] & ~next_cnts[WIDTH*NUM_INPUTS-1];
end

always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        cnts <= 0;
        done <= 0;
    end else begin
        cnts <= next_cnts;
        done <= next_done;
    end
end

endmodule

module cape_ET #(
    parameter WIDTH = 4,
    parameter NUM_INPUTS = 2
)(
    input clk, rst_n,
    input [WIDTH-1:0] Bxs[NUM_INPUTS-1:0],
    input [WIDTH-1:0] trunc,
    output logic done,
    output logic [NUM_INPUTS-1:0] Xs
);

logic [WIDTH*NUM_INPUTS-1:0] cnts, bp;
logic [WIDTH-1:0] Bxs_trunc[NUM_INPUTS-1:0];
logic [WIDTH-1:0] tzds[NUM_INPUTS-1:0];
logic next_done;

cape_CMP_logic #(
    .WIDTH(WIDTH),
    .NUM_INPUTS(NUM_INPUTS)
) c1 (
    .cnts(cnts),
    .Bxs(Bxs_trunc),
    .Xs(Xs)
);

bypass_ctr #(
    .WIDTH(WIDTH*NUM_INPUTS)
) bpc1 (
    .clk(clk),
    .rst_n(rst_n),
    .bp(bp),
    .ovf(next_done),
    .cnt(cnts)
);

tzd #(
    .WIDTH(WIDTH)
) tzd_gen[NUM_INPUTS-1:0] (
    .Bx(Bxs_trunc),
    .z(tzds)
);

always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        done <= 0;
    end else begin
        done <= next_done;
    end
end

integer i, j;
always_comb begin
    for(i=0; i<NUM_INPUTS; i++) begin
        Bxs_trunc[i] = Bxs[i] & ~trunc;
        for(j=0; j<WIDTH; j++) begin
            bp[j*NUM_INPUTS+i] = tzds[i][j];
        end
    end
end

endmodule