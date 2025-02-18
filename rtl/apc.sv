
module apc #(parameter W) (
    input  logic [W-1:0] data_in,
    output logic [$clog2(W+1)-1:0] count_out
);

    always_comb begin
        count_out = 0;
        for (int i = 0; i < W; i++) begin
            if (data_in[i]) begin
                count_out++;
            end
        end

        //$display("data_in: %b, count_out: %b", data_in, count_out);
    end

endmodule