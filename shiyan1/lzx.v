module lzx(ckey,seg,dig);


input [4:1] ckey;
output [6:0] seg;
output [7:0] dig;

reg [6:0] seg;

always @(ckey) 
begin
	case(ckey[4:1])
		4'h0 :seg[6:0] = 8'b1100_0000;
      4'h1 :seg[6:0] = 8'b1111_1001;
		4'h2 :seg[6:0] = 8'b1010_0100;
		4'h3 :seg[6:0] = 8'b1011_0000;
		4'h4 :seg[6:0] = 8'b1001_1001;
		4'h5 :seg[6:0] = 8'b1001_0010;
		4'h6 :seg[6:0] = 8'b1000_0010;
		4'h7 :seg[6:0] = 8'b1111_1000;
		4'h8 :seg[6:0] = 8'b1000_0000;
		4'h9 :seg[6:0] = 8'b1001_0000;

		default:seg<=7'b111_1111;
	endcase
end

assign dig = 8'b1011_1111;

endmodule