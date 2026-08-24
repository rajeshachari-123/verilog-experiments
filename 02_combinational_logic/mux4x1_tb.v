// TESTBENCH CODE FOR 4X1 MULTIPLEXER
module mux4x1_tb();
// DECLARING INPUTS AND OUTPUTS
reg i0,i1,i2,i3,s0,s1;
wire y;
// CONNECTING TESTBENCH CODE TO THE DESIGN CODE
mux4x1 dut (
            .i0(i0),.i1(i1),.i2(i2),
            .i3(i3),.s0(s0),.s1(s1),
             .y(y)
);
//APLLYING DIFFERENT INPUT COMBINATIONS
initial begin
//INPUT COMBINATIONS
i0 = 0; i1 = 1; i2 = 0; i3 = 1;
// SELECT I0
#10 s1 = 0; s0 = 0;
// SELECT I1
#10 s1 = 0; s0 = 1;
// SELECT I2
#10 s1 = 1; s0 = 0;
// SELECT I3
#10 s1 = 1; s0 = 1;
//TO STOP THE SIMULATION
#50 $finish;
end
endmodule


