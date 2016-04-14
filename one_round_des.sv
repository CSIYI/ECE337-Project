module one_round_des
  (
   input wire [63:0] data,
   input wire [47:0] key,
   output wire one_round_rlt
   );

   wire [31:0] left_reg, right_reg, left_reg_nxt, right_reg_nxt;
   always_ff @ (posedge clk, negedge n_rst) begin:
      if (n_rst== 1'b0) begin
	 left_reg <= 32'b0;
	 right_reg <= 32'b0;
      end
      else begin
	 left_reg <= left_reg_nxt;
	 right_reg <= right_reg_nxt;
      end
      
   always_comb begin next_reg
     
      

  
	       