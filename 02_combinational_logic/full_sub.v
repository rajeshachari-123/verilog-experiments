//FULL SUBTRACTOR DESIGN CODE USING BEHAVIORAL MODELING
module full_sub(
                 input a,b,bin,
                 output reg diff,barrow
);
always@ (*) begin
  diff = (a^b^bin);               // OUTPUT EXPRESSION FOR DIFFERENCE
  barrow = (~a&b)|(~a&bin)|(b&bin); // OUTPUT EXPRESSION FOR BARROW
end
endmodule

