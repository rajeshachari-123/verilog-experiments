// TESTBENCH CODE FOR 8_BIT_ALU
module alu_8bit_tb();
// INPUTS AND OUTPUTS DECLARATION
reg [7:0]a;
reg [7:0]b;
reg [3:0]op_code;
wire [7:0]alu_out;
// CONNECTING TESTBENCH CODE TO THE DESIGN CODE
alu_8_bit dut (
               .a(a),.b(b),
              .op_code(op_code),
               .alu_out(alu_out)
);
// APPLYING DIFFERENT INPUT COMBINATIONS
 initial begin
 a = 8'd 20; b = 8'd 20;
  // ARITHEMETIC OPERATIONS
    #10 op_code = 4'b0000;
    #10 op_code = 4'b0001;
    #10 op_code = 4'b0010;
    #10 op_code = 4'b0011;
  // LOGICAL OPERATIONS
#5 a = 8'b 00001111; b = 8'b 1111000;
    #10 op_code = 4'b0100;
    #10 op_code = 4'b0101;
    #10 op_code = 4'b0110;
    #10 op_code = 4'b0111;
    #10 op_code = 4'b1000;
  // SHIFT OPERATIONS
#5 a = 8'b 10101100; b = 8'b 11011100;
    #10 op_code = 4'b1001;
    #10 op_code = 4'b1010;
  // COMPARISION OPERATION
#5 a = 8'b 10101011; b = 8'b 11110000;
    #10 op_code = 4'b1011;
    #10 op_code = 4'b1100;
    #10 op_code = 4'b1101;
  //AND & OR OPERATION WITH INVERTING B
#5 a = 8'b 10101010; b = 8'b 00000000;
    #10 op_code = 4'b1110;
    #10 op_code = 4'b1111;
#50 $finish;
end
endmodule

    

    
