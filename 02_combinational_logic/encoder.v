// 4:2 ENCODER DESIGN CODE 
module encoder4x2(
                  input d0,d1,d2,d3,
                  output reg a,b
);
always@ (*) begin
    case({d3,d2,d1,d0})
      4'b0001:{a,b} = 2'b00;
      4'b0010:{a,b} = 2'b01;
      4'b0100:{a,b} = 2'b10;
      4'b1000:{a,b} = 2'b11;
      default:{a,b} = 2'b00;
endcase
end
endmodule
