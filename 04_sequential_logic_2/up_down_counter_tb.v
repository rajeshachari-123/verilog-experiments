// TESTBENCH CODE FOR UP_COUNTER
module up_down_counter_tb();

// DECLARING INPUTS AND OUTPUTS

reg clk,rst;
reg up_down;
wire [3:0]count;

// CONNECTING TESTBECNH CODE TO THE DESIGN CODE

up_down_counter dut(
               .clk(clk),.rst(rst),
               .up_down(up_down),.count(count)
);

// CLOCK GENERATION

initial begin
clk = 0;
forever #5 clk = ~clk;
end

//APPLYING STIMULI

initial begin
rst = 1;
up_down = 1;

// UP_COUNTING
#10 rst = 0;
#45 up_down = 1;

// DOWN_COUNTING
#80 rst = 0;
#80 up_down = 0;
# 80 $finish;
end
endmodule
