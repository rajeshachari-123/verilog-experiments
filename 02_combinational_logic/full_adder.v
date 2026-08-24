//FULL ADDER DESIGN CODE USING BEHAVIORAL MODELING
module full_adder(
                 input a,b,cin,
                 output reg sum,cout
);
always@ (*) begin
  sum = (a^b^cin);
  cout = (a&b|b&cin|cin&a);
end
endmodule

