module var_ET #(
    parameter CTR_WIDTH = 8
)(
    input clk, rst_n, pz,
    input [CTR_WIDTH-1:0] nmin,
    output logic done
);

logic next_done, pz_delay, ctr_inc;
logic [$clog2(CTR_WIDTH)-1:0] ctr, next_ctr;

always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        done <= 0;
        ctr <= nmin;
    end else begin
        done <= next_done;
        pz_delay <= pz;
        ctr <= next_ctr;
    end
end

always_comb begin
    ctr_inc = pz & ~pz_delay;
    if(ctr_inc) 
        next_ctr = ctr + 3;
    else 
        next_ctr = ctr - 1;
    next_done = ctr == 0;
end

endmodule;