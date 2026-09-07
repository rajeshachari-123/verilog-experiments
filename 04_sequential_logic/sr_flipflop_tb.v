// TESTBENCH CODE FOR SR FLIP FLOP
module sr_ff_tb();
//DECLARING INPUTS AND OUTPUTS
reg s,r,clk,rst;
wire q;
wire q_bar;
// CONNECTING TESTBENCH CODE TO THE DESIGN CODE
sr_ff dut (.s(s),.r(r),
           .clk(clk),.rst(rst),
           .q(q),.q_bar(q_bar)
);
// CLOCK GENERATION
initial begin
clk = 0; 
forever #5 clk = ~clk;
end
// APPLYING DIFFERENT INPUT COMBINATIONS
initial begin
rst = 0;
#10 s =0;r =0;
#10 s =0;r =1;
#10 s =1;r =0;
#10 s =1;r =1;
#50 $finish;
end
endmodule