// Code your design here
module model #(parameter
  DATA_WIDTH = 16
) (
  input [DATA_WIDTH-1:0] din,
  output logic [$clog2(DATA_WIDTH):0] dout
);

	int i;
  	int b = 0;

    always_comb begin
      for(i = 0; i < DATA_WIDTH; i++) begin
        b = din[i] + b;
      end
    end

    assign dout = b;

endmodule
