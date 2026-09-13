// TESTBENCH CODE FOR SISO REGISTER
module siso_reg_tb();
// DECLARING INPUTS AND OUTPUTS
reg clk,rst,si;
wire so;

// CONNECTING TB TO DESIGN CODE

siso_reg dut (.clk(clk),.rst(rst),
              .si(si),.so(so)
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


              
