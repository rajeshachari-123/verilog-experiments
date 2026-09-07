//TESTBENCNH CODE FOR D FLIPFLOP
module d_ff_tb();
// DECLARING INPUTS AND OUTPUTS 
reg d,clk,rst;
wire q;
wire q_bar;
// CONNECTING TESTBENCH TO THE DESIGN CODE
d_ff dut (.d(d),.clk(clk),
          .rst(rst),.q(q),
          .q_bar(q_bar)
);
// CLOCK GENERATION
initial begin
clk = 0;
forever #5 clk = ~clk;
end
// APPLYING DIFFERENT INPUT COMBINATIONS
initial begin
rst =0;
#10 d = 1;
#10 rst = 1;
#10 d = 0;
#10 rst = 0;
#10 d = 0;
#50 $finish;
end
endmodule

