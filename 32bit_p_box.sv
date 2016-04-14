module 32bit_p_box
  (
   input wire [31:0] data,
   output wire [31:0] 32bit
   );

  assign 32bit = {data[15], data[6], data[19], data[20], data[28], data[11], data[27],data[16],
		  data[0], data[14], data[22], data[25], data[4], data[17], data[30], data[9],
		  data[1], data[7], data[23], data[13], data[31], data[26], data[2], data[8],
		  data[18], data[12], data[29], data[5], data[21], data[10], data[3], data[24]};
   
endmodule // 32bit_p_box

