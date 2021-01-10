module vedic_2x2(
a,
b,
out
);

input [1:0]a;
input [1:0]b;
output [3:0]out;
wire [3:0]out;
wire temp[3:0];

assign out[0]=a[0]&b[0];
assign temp[0]=a[1]&b[0];
assign temp[1]=a[0]&b[1];
assign temp[2]=a[1]&b[1];

half_adder half_adder_1(temp[0],temp[1],out[1],temp[3]);
half_adder half_adder_2(temp[3],temp[2],out[2],out[3]);
endmodule