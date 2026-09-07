// TESTBENCH CODE FOR SR FLIP FLOP
module jk_ff_tb();
//DECLARING INPUTS AND OUTPUTS
reg j,k,clk,rst;
wire q;
wire q_bar;
// CONNECTING TESTBENCH CODE TO THE DESIGN CODE
jk_ff dut (.j(j),.k(k),
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
#10 j =0;k =0;
#10 j =0;k =1;
#10 j =1;k =0;
#10 j =1;k =1;
#50 $finish;
end
endmodule
