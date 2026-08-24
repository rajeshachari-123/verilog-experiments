//HALF SUBTRACTOR DESIGN CODE USING BEHAVIORAL MODELING
module half_sub(
                 input a,b,
                 output reg diff,barrow
);
always@ (*) begin
  diff = (a^b);
  barrow = (~a&b);
end
endmodule
