module one_round_des
  (
   input wire [31:0] left_reg,
   input wire [31:0] right_reg,
   input wire [47:0] key,
   output wire [31:0] left_reg_out,
   output wire [31:0] right_reg_out
   );

 
   wire [47:0] 	      expand_rlt, Xor;
   wire [31: 0]       Sbox_rlt, shrink_rlt;
   
   assign left_reg_out = right_reg;
   expansion_p_box expand32to48 (.data(right_reg), .48bit(exapnd_rlt));
   assign Xor = expand_rlt ^ key;
   s_box_all sbox(.data(Xor), .s_rlt(Sbox_rlt));
   32bit_p_box shrink (.data(Sbox_rlt), .32bit(shrink_rlt));
   assign right_reg_out = shink_rlt ^ left_reg;
   
endmodule // one_round_des

      
      
     
      

  
	       