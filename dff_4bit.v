module dff_4bit ( Q, D, EN, RST, CLK);
input CLK;
input RST;
input EN;
input [3:0] D;
output [3:0] Q;

// Internal Wire
wire [3:0] W1;

mux2x1 MUX0 (.Y(W1[0]), .S(EN), .I0(Q[0]), .I1(D[0]));
mux2x1 MUX1 (.Y(W1[1]), .S(EN), .I0(Q[1]), .I1(D[1]));
mux2x1 MUX2 (.Y(W1[2]), .S(EN), .I0(Q[2]), .I1(D[2]));
mux2x1 MUX3 (.Y(W1[3]), .S(EN), .I0(Q[3]), .I1(D[3]));

dff_1bit DFF0 (.CLK(CLK), .RST(RST), .D(W1[0]), .Q(Q[0]));
dff_1bit DFF1 (.CLK(CLK), .RST(RST), .D(W1[1]), .Q(Q[1]));
dff_1bit DFF2 (.CLK(CLK), .RST(RST), .D(W1[2]), .Q(Q[2]));
dff_1bit DFF3 (.CLK(CLK), .RST(RST), .D(W1[3]), .Q(Q[3]));

endmodule