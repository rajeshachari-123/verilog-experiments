// TESTBENCH CODE FOR 4:2 ENCODER
module decoder2x4_tb();
// DECLARING INPUTS AND OUTPUTS
reg a,b;
wire d0,d1,d2,d3;
// CONNECTING TESTBENCH CODE TO THE DESIGN CODE
decoder2x4 dut(
                .a(a),.b(b),.d0(d0),
                .d1(d1),.d2(d2),.d3(d3)
);
//APPLYING DIFFERENT INPUTS
initial begin
// ACTIVATE DO
   a = 0 ; b = 0;
//ACTIVEATE D1
  #10 a =0 ; b =1;
//ACTIVEATE D2
  #10 a =1  ; b = 0;
//ACTIVEATE D3
  #10 a = 1 ; b =1;
// TO STOP STIMULATION
#50 $finish;
end
endmodule
