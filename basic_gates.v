// BASIC_GATES 
module basic_gates(
       input a,b,
       output and_out,
       output or_out,
       output not_out,
       output nand_out,
       output nor_out,
       output xor_out,
       output xnor_out
);
assign and_out  = (a&b);  // AND OPERATION
assign or_out   = (a|b);  // OR OPERATION
assign not_out  = ~a;     // NOT OPERATION
assign nand_out = ~(a&b); // NAND OPERATION
assign nor_out  = ~(a|b); // NOR OPERATION
assign xor_out  = (a^b);  // XOR OPERATION
assign xnor_out = ~(a^b); // XNOR OPERATION
endmodule

