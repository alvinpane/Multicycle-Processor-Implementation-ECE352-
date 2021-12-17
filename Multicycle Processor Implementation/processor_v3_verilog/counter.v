module counter (clock,reset,stop,counter);

input stop, reset, clock;

output reg [15:0] counter;

always @(posedge clock or posedge reset or stop)
begin
	if (reset)
		counter = 0;
	else if (!stop)
		counter = counter + 1;
end

endmodule
