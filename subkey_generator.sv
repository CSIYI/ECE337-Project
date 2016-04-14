module subkey_generator
  (
   input wire [63:0]  input_key,
   input wire en_decrypt,
   output wire [47:0] subkey1,
   output wire [47:0] subkey2,
   output wire [47:0] subkey3,
   output wire [47:0] subkey4,
   output wire [47:0] subkey5,
   output wire [47:0] subkey6,
   output wire [47:0] subkey7,
   output wire [47:0] subkey8,
   output wire [47:0] subkey9,
   output wire [47:0] subkey10,
   output wire [47:0] subkey11,
   output wire [47:0] subkey12,
   output wire [47:0] subkey13,
   output wire [47:0] subkey14,
   output wire [47:0] subkey15,
   output wire [47:0] subkey16
   );

   wire [27:0] 	      left_reg, right_reg;
   wire [55:0] 	      56_bit_key;
   wire [47: 0]       key1, key2, key3, key4, key5, key6, key7, key8, key9, key10, key11, key12, key13, key14, key15, key16;
   

   p_box1 p1 (.key(input_key), .p1_key(56_bit_key));
   
   assign left_reg = 56_bit_key[55:28];
   assign right_reg = 56_bit_key[27:0];

   p_box2 p2_1 (.key({left_reg[26:0],left_reg[27],right_reg[26:0], right_reg[27]}), .p2_key(key1));
   p_box2 p2_2 (.key({left_reg[25:0],left_reg[27:26],right_reg[25:0], right_reg[27:26]}), .p2_key(key2));
   p_box2 p2_3 (.key({left_reg[23:0],left_reg[27:24],right_reg[23:0], right_reg[27:24]}), .p2_key(key3));
   p_box2 p2_4 (.key({left_reg[21:0],left_reg[27:22],right_reg[21:0], right_reg[27:22]}), .p2_key(key4));
   p_box2 p2_5 (.key({left_reg[19:0],left_reg[27:20],right_reg[19:0], right_reg[27:20]}), .p2_key(key5));
   p_box2 p2_6 (.key({left_reg[17:0],left_reg[27:18],right_reg[17:0], right_reg[27:18]}), .p2_key(key6));
   p_box2 p2_7 (.key({left_reg[15:0],left_reg[27:16],right_reg[15:0], right_reg[27:16]}), .p2_key(key7));
   p_box2 p2_8 (.key({left_reg[13:0],left_reg[27:14],right_reg[13:0], right_reg[27:14]}), .p2_key(key8));
   p_box2 p2_9 (.key({left_reg[12:0],left_reg[27:13],right_reg[12:0], right_reg[27:13]}), .p2_key(key9));
   p_box2 p2_10 (.key({left_reg[10:0],left_reg[27:11],right_reg[10:0], right_reg[27:11]}), .p2_key(key10));
   p_box2 p2_11 (.key({left_reg[8:0],left_reg[27:9],right_reg[8:0], right_reg[27:9]}), .p2_key(key11));
   p_box2 p2_12 (.key({left_reg[6:0],left_reg[27:7],right_reg[6:0], right_reg[27:7]}), .p2_key(key12));
   p_box2 p2_13 (.key({left_reg[4:0],left_reg[27:5],right_reg[4:0], right_reg[27:5]}), .p2_key(key13));
   p_box2 p2_14 (.key({left_reg[2:0],left_reg[27:3],right_reg[2:0], right_reg[27:3]}), .p2_key(key14));
   p_box2 p2_15 (.key({left_reg[0],left_reg[27:1],right_reg[0], right_reg[27:1]}), .p2_key(key15));
   p_box2 p2_16 (.key({left_reg[27:0], right_reg[27:0]}), .p2_key(key16));
   
   assign subkey1 = (en_decrypt == 1'b1)? key1: key16;
   assign subkey2 = (en_decrypt == 1'b1)? key2: key15;
   assign subkey3 = (en_decrypt == 1'b1)? key3: key14;
   assign subkey4 = (en_decrypt == 1'b1)? key4: key13;
   assign subkey5 = (en_decrypt == 1'b1)? key5: key12;
   assign subkey6 = (en_decrypt == 1'b1)? key6: key11;
   assign subkey7 = (en_decrypt == 1'b1)? key7: key10;
   assign subkey8 = (en_decrypt == 1'b1)? key8: key9;
   assign subkey9 = (en_decrypt == 1'b1)? key9: key8;
   assign subkey10 = (en_decrypt == 1'b1)? key10: key7;
   assign subkey11 = (en_decrypt == 1'b1)? key11: key6;
   assign subkey12 = (en_decrypt == 1'b1)? key12: key5;
   assign subkey13 = (en_decrypt == 1'b1)? key13: key4;
   assign subkey14 = (en_decrypt == 1'b1)? key14: key3;
   assign subkey15 = (en_decrypt == 1'b1)? key15: key2;
   assign subkey16 = (en_decrypt == 1'b1)? key16: key1;
endmodule // subkey_generator

 
   
   
   
	

   

 
   
   
   

   
