//HALF ADDER ADDER DESIGN CODE USING BEHAVIORAL MODELING
module half_adder(
                 input a,b,
                 output reg sum,carry
);
always@ (*) begin
  sum = (a^b);
  carry = (a&b);
end
endmodule

