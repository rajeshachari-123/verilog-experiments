// 2X4 DECODER DESIGN CODE
module decoder2x4(
                  input a,b,
                  output reg d0,d1,d2,d3
);
always@(*)begin
    case ({a,b})
     2'b00:{d3,d2,d1,d0} = 4'b0001;
     2'b01:{d3,d2,d1,d0} = 4'b0010;
     2'b10:{d3,d2,d1,d0} = 4'b0100;
     2'b11:{d3,d2,d1,d0} = 4'b1000;
     default:{d3,d2,d1,d0} = 4'b0000;
endcase
end
endmodule