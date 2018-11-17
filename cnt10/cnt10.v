module cnt10(CLR,CLK,Q);

input CLR,CLK;
output [3:0] Q;
reg [3:0] Q;

always @(posedge CLK or negedge CLR)

	if(!CLR)
		Q <= 0;
	else if(Q==9)
			Q <= 0;
		else 
			Q <= Q + 1;
		
endmodule