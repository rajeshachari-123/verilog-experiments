// TESTBENCH CODE FOR 4X1 MULTIPLEXER
module demux1x4_tb();
// DECLARING INPUTS AND OUTPUTS
reg i,s0,s1;
wire d0,d1,d2,d3;
// CONNECTING TESTBENCH CODE TO THE DESIGN CODE
demux1x4 dut (
            .i(i),.s0(s0),.s1(s1),
             .d0(d0),.d1(d1),.d2(d2),.d3(d3)
);
//APLLYING DIFFERENT INPUT COMBINATIONS
initial begin
//INPUT COMBINATIONS
i = 1;
// SELECT d0
#10 s1 = 0; s0 = 0;
// SELECT d1
#10 s1 = 0; s0 = 1;
// SELECT d2
#10 s1 = 1; s0 = 0;
// SELECT d3
#10 s1 = 1; s0 = 1;
//TO STOP THE SIMULATION
#50 $finish;
end
endmodule


