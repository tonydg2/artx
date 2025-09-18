module top_io (
  input         SYSCLK_N    ,
  input         SYSCLK_P    ,
  output [3:0]  LEDS        ,
  input [1:0]   GPIO_SW
);
///////////////////////////////////////////////////////////////////////////////////////////////////

  mmcm_diff mmcm_diff_i (
    .clk100     (clk100     ),  // output clk100
    .clk200     (clk200     ),  // output clk200
    .clk400     (clk400     ),  // output clk400
    .clk600     (clk600     ),  // output clk600
    .lock       (lock       ),  // output lock
    .clk_in1_p  (SYSCLK_P   ),  // input clk_in1_p
    .clk_in1_n  (SYSCLK_N   )   // input clk_in1_n
  );

  logic led=0;
  logic [31:0] cnt='0;

  always_ff @(posedge clk100) begin
    cnt <= cnt + 1;
    if (cnt == 32'hFFFFFFFF) led <= ~led;  
  end


  long_comb_path long_comb_path_inst1 (
    .rst (),
    .clk (clk100),
    .d_i (cnt),
    .d_o (LEDS[0])
  );

  long_comb_path long_comb_path_inst2 (
    .rst (),
    .clk (clk200),
    .d_i (cnt),
    .d_o (LEDS[1])
  );

  long_comb_path long_comb_path_inst4 (
    .rst (),
    .clk (clk400),
    .d_i (cnt),
    .d_o (LEDS[2])
  );

  long_comb_path long_comb_path_inst6 (
    .rst (),
    .clk (clk600),
    .d_i (cnt),
    .d_o (LEDS[3])
  );




//  assign LED_RGB_R2 = led;
//  assign LED_RGB_G2 = led;
//  assign LED_RGB_B2 = led;


endmodule
