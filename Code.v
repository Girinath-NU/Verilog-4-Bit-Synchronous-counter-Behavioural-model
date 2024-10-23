module synchronous_counter(
    input clk,          // Clock signal
    input reset,        // Active-high reset signal
    output reg [3:0] q  // 4-bit output representing the count
);

    // Always block triggered on the rising edge of the clock or when reset is high
    always @(posedge clk or posedge reset) begin
        if (reset) 
            // If reset is high, set the counter to 0
            q <= 4'b0000;
        else 
            // Otherwise, increment the counter by 1
            q <= q + 1;
    end
endmodule
