// 1x4 DEMUX DESIGN CODE USING CONDITIONAL STATEMNET
module demux1x4(
           input i,s0,s1,
           output d0,d1,d2,d3
);
assign d0 = (!s1 && !s0) ? i :1'b0;
assign d1 = (!s1 && s0) ? i:1'b0;
assign d2 = (s1 && !s0) ? i :1'b0;
assign d3 = (!s1 && !s0) ? i :1'b0;
endmodule

