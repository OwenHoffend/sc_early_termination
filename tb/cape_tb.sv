`timescale 1ns / 1ps

module cape_tb;

// Parameters
parameter WIDTH = 4;
parameter NUM_INPUTS = 2;

// Signals
logic clk;
logic rst_n;
logic [WIDTH-1:0] Bxs[NUM_INPUTS];
logic done;
logic [NUM_INPUTS-1:0] Xs;

//Detect output probabilities
real out_cnts[NUM_INPUTS-1:0];
real cycle_count;
always @(posedge clk) begin
    cycle_count += 1.0;
    foreach(Xs[i]) begin
        if(Xs[i]) out_cnts[i] += 1.0;
        $display("Cycle: %g, ctr: %x, input: %d, pz: %b, SC value: %g", 
            cycle_count, dut.cnts, i, Xs[i], out_cnts[i] / cycle_count);
    end
end

task begin_SC_test(input [WIDTH-1:0] Bxs_inst[NUM_INPUTS]);
    Bxs = Bxs_inst;
    out_cnts = '{NUM_INPUTS{0.0}};
    cycle_count = 0.0;
    reset();

    wait(done);
endtask

// Instantiate the cape module
cape #(
    .WIDTH(WIDTH),
    .NUM_INPUTS(NUM_INPUTS)
) dut (
    .clk(clk),
    .rst_n(rst_n),
    .Bxs(Bxs),
    .done(done),
    .Xs(Xs)
);

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
    begin_SC_test({{4'b1100}, {4'b1000}}); //3/4, 1/2

    $finish;
end

endmodule