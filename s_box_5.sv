module s_box_5
  (
   input wire [5:0] 6_bit,
   output wire [4:0] 4_bit
   );

   logic [1:0] row;
   logic [3:0] col;

   assign row = {6_bit[5], 6_bit[0]};
   assign col = 6_bit[4:1];
   parameter [3:0] x00x = 4'b0000,
     x01x = 4'b0001,
     x02x = 4'b0010,
     x03x = 4'b0011,
     x04x = 4'b0100,
     x05x = 4'b0101,
     x06x = 4'b0110,
     x07x = 4'b0111,
     x08x = 4'b1000,
     x09x = 4'b1001,
     x10x = 4'b1010,
     x11x = 4'b1011,
     x12x = 4'b1100,
     x13x = 4'b1101,
     x14x = 4'b1110,
     x15x = 4'b1111;
   
     
   always_comb begin
      if (row == 0) begin
	 case(col)
	   x00x: 4_bit = 4'd2;
	   x01x: 4_bit = 4'd12;
	   x02x: 4_bit = 4'd4;
	   x03x: 4_bit = 4'd1;
	   x04x: 4_bit = 4'd7;
	   x05x: 4_bit = 4'd10;
	   x06x: 4_bit = 4'd11;
	   x07x: 4_bit = 4'd6;
	   x08x: 4_bit = 4'd8;
	   x09x: 4_bit = 4'd5;
	   x10x: 4_bit = 4'd3;
	   x11x: 4_bit = 4'd15;
	   x12x: 4_bit = 4'd13;
	   x13x: 4_bit = 4'd0;
	   x14x: 4_bit = 4'd14; 
	   x15x: 4_bit = 4'd9;
	 endcase // case (col)
      end // if (row == 0)
      else if (row == 1) begin
	 case(col)
	   x00x: 4_bit = 4'd14;
	   x01x: 4_bit = 4'd11;
	   x02x: 4_bit = 4'd2;
	   x03x: 4_bit = 4'd12;
	   x04x: 4_bit = 4'd4;
	   x05x: 4_bit = 4'd7;
	   x06x: 4_bit = 4'd13;
	   x07x: 4_bit = 4'd1;
	   x08x: 4_bit = 4'd5;
	   x09x: 4_bit = 4'd0;
	   x10x: 4_bit = 4'd15;
	   x11x: 4_bit = 4'd10;
	   x12x: 4_bit = 4'd3;
	   x13x: 4_bit = 4'd9;
	   x14x: 4_bit = 4'd8; 
	   x15x: 4_bit = 4'd6;
	 endcase // case (col)
      end // if (row == 1)
      else if (row == 2) begin
	  case(col)
	    x00x: 4_bit = 4'd4;
	    x01x: 4_bit = 4'd2;
	    x02x: 4_bit = 4'd1;
	    x03x: 4_bit = 4'd11;
	    x04x: 4_bit = 4'd10;
	    x05x: 4_bit = 4'd13;
	    x06x: 4_bit = 4'd7;
	    x07x: 4_bit = 4'd8;
	    x08x: 4_bit = 4'd15;
	    x09x: 4_bit = 4'd9;
	    x10x: 4_bit = 4'd12;
	    x11x: 4_bit = 4'd5;
	    x12x: 4_bit = 4'd6;
	    x13x: 4_bit = 4'd3;
	    x14x: 4_bit = 4'd0; 
	    x15x: 4_bit = 4'd14;
	  endcase // case (col)
      end // if (row == 2)
      else if (row == 3) begin
	  case(col)
	    x00x: 4_bit = 4'd11;
	    x01x: 4_bit = 4'd8;
	    x02x: 4_bit = 4'd12;
	    x03x: 4_bit = 4'd7;
	    x04x: 4_bit = 4'd1;
	    x05x: 4_bit = 4'd14;
	    x06x: 4_bit = 4'd2;
	    x07x: 4_bit = 4'd13;
	    x08x: 4_bit = 4'd6;
	    x09x: 4_bit = 4'd15;
	    x10x: 4_bit = 4'd0;
	    x11x: 4_bit = 4'd9;
	    x12x: 4_bit = 4'd10;
	    x13x: 4_bit = 4'd4;
	    x14x: 4_bit = 4'd5; 
	    x15x: 4_bit = 4'd3;
	  endcase // case (col)
      end // if (row == 3)
   end // always_comb
endmodule // s_box_5
