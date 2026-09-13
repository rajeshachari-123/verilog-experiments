// TESTBENCH CODE FOR SISO REGISTER
module sipo_reg_tb();
// DECLARING INPUTS AND OUTPUTS
reg clk,rst,si;
wire [3:0]po;

// CONNECTING TB TO DESIGN CODE

sipo_reg dut (.clk(clk),.rst(rst),
              .si(si),.po(po)
);

// CLOCK GENERATION

initial begin
clk =0;
forever #5 clk = ~clk;
end

// APPLYING STIMULI
initial begin
rst = 1;
si = 0;
#10 rst = 0;
#10 si = 0;
#10 si = 1;
#10 si = 1;
#10 si = 0;
#50 $finish;
end 
endmodule


              
