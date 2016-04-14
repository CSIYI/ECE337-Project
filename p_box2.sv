module p_box2
  (
   input wire [55:0] key,
   output wire [47:0] p2_key 
   );
   assign p2_key = {key[13], key[16], key[10],key[23], key[0], key[4], key[2], key[27],
		    key[14], key[5], key[20], key[9], key[22], key[18], key[11], key[3],
		    key[25], key[7], key[15], key[6], key[26], key[19], key[12], key[1],
		    key[40], key[51], key[30], key[36], key[46], key[54], key[29], key[39],
		    key[55], key[44], key[32], key[47], key[43], key[48], key[38], key[55],
		    key[33], key[52], key[45], key[41], key[49], key[35], key[28], key[31]};

endmodule // p_box2
