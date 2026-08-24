//TESTBENCH CODE FOR FULL ADDER
module full_adder_tb();
//DECLARING INPUTS AND OUTPUTS
reg a,b,cin;
wire sum,cout;
// CONNECTING TESTBENCH CODE TO THE DESIGN CODE
full_adder dut (
                .a(a),.b(b),.cin(cin),
                .sum(sum),.cout(cout)
);
// APPLYING DIFFERENT INPUT COMBINATIONS
initial begin
 repeat(15)begin
#10 {a,b,cin}=$random;
end
#50 $finish;
end
endmodule


