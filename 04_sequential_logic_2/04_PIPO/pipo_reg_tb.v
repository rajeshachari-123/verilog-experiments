module pipo_reg_tb();
// DECLARING INPUTS AND OUTPUTS
reg clk,rst;
reg [3:0]pi;
wire [3:0]po;

// CONNECTING TB TO DESIGN CODE

piso_reg dut (.clk(clk),.rst(rst),
              .pi(pi),.po(po)
);

// CLOCK GENERATION

initial begin
clk =0;
forever #5 clk = ~clk;
end

// APPLYING STIMULI
initial begin
rst = 1;
#10 rst = 0;
pi = 4'b1010;
#40;
#10 pi = 4'b1011;
#40 $finish;
end 
endmodule
