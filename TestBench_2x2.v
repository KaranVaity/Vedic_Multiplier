module TestBench_2x2;
wire [3:0]out;
reg [1:0]a;
reg [1:0]b;
vedic_2x2 v22(a,b,out);
initial
begin
a=2'b11; b=2'b10; 
#10 a=2'b01; b=2'b00;
#10 a=2'b01; b=2'b10;
#10 a=2'b11; b=2'b11;
#10 $finish;	
end
endmodule


	
