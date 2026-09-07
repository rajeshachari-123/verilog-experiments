//TESTBENCNH CODE FOR T FLIPFLOP
module t_ff_tb();
// DECLARING INPUTS AND OUTPUTS 
reg t,clk,rst;
wire q;
wire q_bar;
// CONNECTING TESTBENCH TO THE DESIGN CODE
t_ff dut (.t(t),.clk(clk),
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
t =0;
rst = 1;
#10 rst =0;
#10 t = 1;
#10 t = 0;
#10 t = 1;
#50 $finish;
end
endmodule

