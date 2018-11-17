module adder4(mclk,rst_n,a_in,b_in,c_out);

input mclk,rst_n;
input [3:0] a_in,b_in;
output [4:0] c_out;

reg[4:0] c_out;

always@(posedge mclk,negedge rst_n)
begin
	if(!rst_n)
		c_out <= 5'h0;
	else
		c_out <= a_in + b_in;
end

endmodule