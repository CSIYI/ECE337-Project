module s_box_all
  (
   input wire [47:0] data,
   output wire [31:0] s_rlt
   );

   reg [3:0] 	      s1_rlt, s2_rlt, s3_rlt, s4_rlt, s5_rlt, s6_rlt, s7_rlt, s8_rlt;

   assign s_rlt = {s1_rlt, s2_rlt, s3_rlt, s5_rlt, s6_rlt, s7_rlt, s8_rlt};
   
   s_box_1 s1 (.6_bit(data[47:42]), 4_bit(s1_rlt));
   s_box_2 s2 (.6_bit(data[41:36]), 4_bit(s2_rlt));
   s_box_3 s3 (.6_bit(data[35:30]), 4_bit(s3_rlt));
   s_box_4 s4 (.6_bit(data[29:24]), 4_bit(s4_rlt));
   s_box_5 s5 (.6_bit(data[23:17]), 4_bit(s5_rlt));
   s_box_6 s6 (.6_bit(data[16:11]), 4_bit(s6_rlt));
   s_box_7 s7 (.6_bit(data[10:5]), 4_bit(s7_rlt));
   s_box_8 s8 (.6_bit(data[5:0]), 4_bit(s8_rlt));
endmodule // s_box_all

  
   
  
  
