// TESTBENCH CODE FOR SISO REGISTER
module piso_reg_tb();
// DECLARING INPUTS AND OUTPUTS
reg clk,rst,shift;
reg [3:0]pi;
wire so;

// CONNECTING TB TO DESIGN CODE

piso_reg dut (.clk(clk),.rst(rst),.shift(shift),
              .pi(pi),.so(so)
);

// CLOCK GENERATION

initial begin
clk =0;
forever #5 clk = ~clk;
end

// APPLYING STIMULI
initial begin
rst = 1; shift =0;
#10 rst = 0;
pi = 4'b1010;
#40;
#10 shift = 0;
#10 pi = 4'b1011;
#10 shift = 1;
#40 $finish;
end 
endmodule

