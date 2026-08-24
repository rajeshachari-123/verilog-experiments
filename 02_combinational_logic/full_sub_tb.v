//TESTBENCH CODE FOR FULL SUBTRACTOR
module full_sub_tb();
//DECLARING INPUTS AND OUTPUTS
reg a,b,bin;
wire diff,barrow;
// CONNECTING TESTBENCH CODE TO THE DESIGN CODE
full_sub dut (
                .a(a),.b(b),.bin(bin),
                .diff(diff),.barrow(barrow)
);
// APPLYING DIFFERENT INPUT COMBINATIONS
initial begin
 repeat(15)begin       // REAPEAT RANDOM INPUT COMBINATIONS FOR 15 TIMES
#10 {a,b,bin}=$random;
end
#50 $finish;
end
endmodule
