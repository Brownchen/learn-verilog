module comp4(A,B,LG,EQ,SM);

input [3:0] A,B;
output LG,EQ,SM;

assign {LG,EQ,SM} = FUNC_COMP(A,B);

function [2:0]FUNC_COMP;
	input [3:0] A,B;
	if(A>B)
		FUNC_COMP = 3'b100;
	else if(A<B)
		FUNC_COMP = 3'b001;
	else 
		FUNC_COMP = 3'b010;
endfunction

endmodule