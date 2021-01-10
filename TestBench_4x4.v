module TestBench_4x4;
wire [7:0]out;
reg [3:0]a;
reg [3:0]b;
vedic_4x4 v44(a,b,out);
initial
begin
a=4'b1100; b=4'b1000; 
#10 a=4'b1111; b=4'b1111;
#10 a=4'b0101; b=4'b1011;
#10 a=4'b0000; b=4'b1110;
#10 $finish;	
end
endmodule


	
