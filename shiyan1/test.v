module test;
  reg [3:0] key;
  wire [6:0] seg;
  wire [7:0] dig;
  
  lzx u1(.ckey(key),.seg(seg),.dig(dig));
  
  initial
  begin
    key =4'h0;
    #10 key =4'h1;
    #10 key =4'h2;
    #10 key =4'h3;
    #10 key =4'h4;
    #10 key =4'h5;
    #10 key =4'h6;
    #10 key =4'h7;
    #10 key =4'h8;
    #10 key =4'h9;
    #10 key =4'ha;
    #10 key =4'hb;
    #10 key =4'hc;
    #10 key =4'hd;
    #10 key =4'he;
    #10 key =4'hf;
end

endmodule