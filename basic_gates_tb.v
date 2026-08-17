module basic_gates_tb();
// declaring ports
reg a,b;
wire and_out;
wire or_out;
wire not_out;
wire nand_out;
wire nor_out;
wire xor_out;
wire xnor_out;
// connecting test bench to the design code
basic_gates dut(.a(a),.b(b),
                .and_out(and_out),
                .or_out(or_out),
                .not_out(not_out),
                .nand_out(nand_out),
                .nor_out(nor_out),
                .xor_out(xor_out)
);
// applying stimuli
initial begin
a = 0;b = 0;
#10 a = 0;b = 1;
#10 a = 1;b = 0;
#10 a = 1;b = 1;
#50 $finish;
end
endmodule

                
