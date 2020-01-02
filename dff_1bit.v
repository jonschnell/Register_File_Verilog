module dff_1bit (Q, D, RST, CLK);
	input CLK, RST, D;
	output reg Q;

	always @ (posedge CLK or negedge RST)
		begin
		if (!RST)
		Q <= 1'd0;
		else
		Q <= D;
	end
endmodule