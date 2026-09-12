// TESTBENCH CODE FOR UP_COUNTER
module down_counter_tb();

// DECLARING INPUTS AND OUTPUTS

reg clk,rst;
wire [3:0]count;

// CONNECTING TESTBECNH CODE TO THE DESIGN CODE

down_counter dut(
               .clk(clk),.rst(rst),
               .count(count)
);

// CLOCK GENERATION

initial begin
clk = 0;
forever #5 clk = ~clk;
end

//APPLYING STIMULI

initial begin
rst = 1;
#100 rst = 0;
# 200 $finish;

end
endmodule


