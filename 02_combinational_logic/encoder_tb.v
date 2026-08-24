// TESTBENCH CODE FOR 4:2 ENCODER
module encoder4x2_tb();
// DECLARING INPUTS AND OUTPUTS
reg d0,d1,d2,d3;
wire a,b;
// CONNECTING TESTBENCH CODE TO THE DESIGN CODE
encoder4x2 dut(
               .d0(d0),.d1(d1),.d2(d2),
               .d3(d3),.a(a),.b(b)
);
//APPLYING DIFFERENT INPUTS
initial begin
// ACTIVATE DO
   d3 =0; d2 = 0; d1 =0 ; d0 =1;
//ACTIVEATE D1
  #10 d3 =0; d2 = 0; d1 =1 ; d0 =0;
//ACTIVEATE D2
  #10 d3 =0; d2 = 1; d1 =0 ; d0 =0;
//ACTIVEATE D3
  #10 d3 =1; d2 = 0; d1 = 0; d0 =0;
// TO STOP STIMULATION
#50 $finish;
end
endmodule


