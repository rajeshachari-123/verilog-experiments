//TESTBENCH CODE FOR HALF SUBTRACTOR
module half_sub_tb();
//DECLARING INPUTS AND OUTPUTS
reg a,b;
wire diff,barrow;
// CONNECTING TESTBENCH CODE TO THE DESIGN CODE
half_sub dut (
                .a(a),.b(b),
                .diff(diff),.barrow(barrow)
);
// APPLYING DIFFERENT INPUT COMBINATIONS
initial begin
 // INPUT COMBINATION:00
   a=0;b=0;
// INPUT COMBINATION:01
  #10 a=0;b=1;
// INPUT COMBINATION:10
   #10 a=1;b=0;
// INPUT COMBINATION:11
   #10 a=1;b=1;
// TO STOP SIMULATION
#50 $finish;
end
endmodule

