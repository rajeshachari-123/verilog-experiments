// DESIGN CODE FOR D FLIP FLOP
module d_ff(input d,rst,clk,
            output reg q,
            output q_bar
);
always@ (posedge clk or posedge rst) begin
if(rst)
 q <= 0;
else
 q <= d;
end
assign q_bar = ~q;
endmodule
