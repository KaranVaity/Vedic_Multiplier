module TestBench_8x8;
wire [15:0]out;
reg [7:0]a;
reg [7:0]b;
vedic_8x8 v88(a,b,out);
initial
begin
a=8'b11001101; b=8'b10001001; 
#10 a=8'b11111111; b=8'b11111111;
#10 a=8'b01010000; b=8'b10110000;
#10 a=8'b00000000; b=8'b11100111;
#10 $finish;	
end
endmodule


	
