`timescale 1ns / 1ps

module lfsr_sng_corr_tb;

// Parameters
parameter WIDTH = 8;
parameter NUM_INPUTS = 2;
parameter START_STATE = 1;

// Signals
logic clk;
logic rst_n;
logic [WIDTH-1:0] Bxs[NUM_INPUTS-1:0];
logic done;
logic [NUM_INPUTS-1:0] Xs;

//Detect output probabilities
real out_cnts[NUM_INPUTS-1:0];
real cycle_count;
always @(posedge clk) begin
    cycle_count += 1.0;
    foreach(Xs[i]) begin
        if(Xs[i]) out_cnts[i] += 1.0;
        $display("Cycle: %g, input: %d, pz: %b, SC value: %g", 
            cycle_count, i, Xs[i], out_cnts[i] / cycle_count);
    end
end

task begin_SC_test(input [WIDTH-1:0] Bxs_inst[NUM_INPUTS-1:0]);
    Bxs = Bxs_inst;
    out_cnts = '{NUM_INPUTS{0.0}};
    cycle_count = 0.0;
    reset();

    wait(done);
endtask

//LFSR doesn't have dedicated done signal
assign done = (cycle_count == 2.0 ** WIDTH);

// Instantiate the lfsr module
`ifdef SYNTHESIS
    logic [NUM_INPUTS*WIDTH-1:0] Bxs_flat;
    always_comb begin
        foreach(Bxs[i, j]) begin
            Bxs_flat[i*WIDTH+j] = Bxs[i][j];
        end
    end

    lfsr_sng dut (
        .clk(clk),
        .rst_n(rst_n),
        .Bxs(Bxs_flat),
        .Xs(Xs)
    );
`else
    lfsr_sng_corr #(
        .WIDTH(WIDTH),
        .NUM_INPUTS(NUM_INPUTS),
        .START_STATE(START_STATE)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .Bxs(Bxs),
        .Xs(Xs)
    );
`endif

// Clock generation
always #5 clk = ~clk;

task reset();
    clk = 0;
    rst_n = 1; #1;
    rst_n = 0; #1;
    rst_n = 1; #1;
    $display("----");
endtask

initial begin
    begin_SC_test({
        {8'b1100_0000}, 
        {8'b1000_0000}
    }); //0.75, 0.5
    begin_SC_test({
        {8'b0000_0011}, 
        {8'b0000_0011}
    }); //3/256, 3/256 (0.01171875)
    $finish;
end

endmodule