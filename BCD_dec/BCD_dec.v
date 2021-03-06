`define OUT_0 10'b00_0000_0001

`define OUT_1 10'b00_0000_0010

`define OUT_2 10'b00_0000_0100

`define OUT_3 10'b00_0000_1000

`define OUT_4 10'b00_0001_0000

`define OUT_5 10'b00_0010_0000

`define OUT_6 10'b00_0100_0000

`define OUT_7 10'b00_1000_0000

`define OUT_8 10'b01_0000_0000

`define OUT_9 10'b10_0000_0000

`define OUT_ERR 10'b00_0000_0000


module BCD_dec(IN,OUT,ERR);

input [3:0] IN;

output [9:0] OUT;
output ERR;

assign {ERR,OUT} = FUNC_DEC(IN);

function [10:0] FUNC_DEC;

	input [3:0] IN;
	
	case (IN)
		0:FUNC_DEC = {1'b0,`OUT_0};
		1:FUNC_DEC = {1'b0,`OUT_1};
		2:FUNC_DEC = {1'b0,`OUT_2};
		3:FUNC_DEC = {1'b0,`OUT_3};
		4:FUNC_DEC = {1'b0,`OUT_4};
		5:FUNC_DEC = {1'b0,`OUT_5};
		6:FUNC_DEC = {1'b0,`OUT_6};
		7:FUNC_DEC = {1'b0,`OUT_7};
		8:FUNC_DEC = {1'b0,`OUT_8};
		9:FUNC_DEC = {1'b0,`OUT_9};
		default:FUNC_DEC = {1'b1,`OUT_ERR};		
	endcase
	
endfunction

endmodule
	