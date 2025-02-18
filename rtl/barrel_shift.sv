module barrel_shift #(parameter W = 8) (
    input  logic [W-1:0] data_in,
    input  logic [$clog2(W)-1:0] shift_amount,
    output logic [W-1:0] data_out
);

    always_comb begin
        data_out = data_in;
        for (int i = 0; i < $clog2(W); i++) begin
            if (shift_amount[i]) begin
                data_out = data_out << (1 << i);
            end
        end
    end
endmodule