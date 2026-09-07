//DESIGN CODE FPR T FLIP FLOP
module t_ff(input t,rst,clk,
            output reg q,
            output q_bar
);
always@ (posedge clk or posedge rst) begin
if(rst)
 q <= 0;
else if(t)
 q <= ~q;
else
 q <= q;
end
assign q_bar = ~q;
endmodule
