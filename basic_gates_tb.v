// TESTBENCH CODE FOR BASIC GATES
module basic_gates_tb();
// DECLARING INPUT AND OUTPUT PORTS
reg a,b;
wire and_out;
wire or_out;
wire not_out;
wire nand_out;
wire nor_out;
wire xor_out;
wire xnor_out;
// CONNECTING TESTBENCH TO THE DESIGN CODE
basic_gates dut(.a(a),.b(b),
                .and_out(and_out),
                .or_out(or_out),
                .not_out(not_out),
                .nand_out(nand_out),
                .nor_out(nor_out),
                .xor_out(xor_out),
                .xnor_out(xnor_out)
);
// APPLYING DIFFERENT INPUT COMBINATIONS
initial begin
// FOR INPUT COMBINATION:00
    a = 0;b = 0;

// FOR INPUT COMBINATION:01
   #10 a = 0;b = 1;

// FOR INPUT COMBINATION:10
   #10 a = 1;b = 0;

// FOR INPUT COMBINATION:11
   #10 a = 1;b = 1;

// TO STOP SIMULATION
   #50 $finish;
end
endmodule

                
