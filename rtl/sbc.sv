module sbc #(
    parameter WIDTH = 8
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

module ret_sbc #(
    parameter WIDTH = 8
) (
    input clk, rst_n, pz, done,
    output logic [WIDTH-1:0] Bz,
    output logic done_p2
);

logic [WIDTH-1:0] next_Bz;
logic [WIDTH-1:0] ctr, ctr_rev, next_ctr;

logic [WIDTH-1:0] msb_hot, msb_detect; //1110 --> 0010 (LSB is on left for fixed-point fraction)
logic [WIDTH-1:0] sum;

logic eq;

always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        Bz <= 0;
        ctr <= 1;
    end else begin
        Bz <= next_Bz;
        ctr <= next_ctr;
    end
end

integer i;
always_comb begin
    next_ctr = ctr + 1'b1;
    
    msb_hot[0] = ctr[WIDTH-1];
    for(i=1; i<WIDTH; i++) msb_hot[i] = ctr[(WIDTH-1)-i] | msb_hot[i-1];

    msb_detect[0] = msb_hot[0];
    for(i=1; i<WIDTH; i++) msb_detect[i] = msb_hot[i] & ~msb_hot[i-1];

    for(i=0; i<WIDTH; i++) ctr_rev[i] = ctr[(WIDTH-1)-i];

    eq = (ctr_rev == msb_detect);

    if(eq) next_Bz = Bz >> 1;
    else next_Bz = Bz;

    sum = next_Bz + msb_detect;
    if(pz) next_Bz = sum;

    done_p2 = done & eq;
end

endmodule