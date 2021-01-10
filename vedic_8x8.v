module vedic_8x8(
input [7:0] a, b,
output [15:0] out);

wire [7:0] q0,q1,q2,q3,temp1;
wire [11:0] q4,q5,q6,temp2,temp3,temp4;


vedic_4x4 v0(a[3:0],b[3:0],q0[7:0]);
vedic_4x4 v1(a[7:4],b[3:0],q1[7:0]);
vedic_4x4 v2(a[3:0],b[7:4],q2[7:0]);
vedic_4x4 v3(a[7:4],b[7:4],q3[7:0]);
assign temp1 ={4'b0,q0[7:4]};
full_adder8 fa0(temp1,q1,q4);
assign temp2 ={4'b0,q2[7:0]};
assign temp3 ={q3[7:0],4'b0};
full_adder12 fa1(temp3,temp2,q5);
assign temp4={4'b0,q4[7:0]};
full_adder12 fa2(temp4,q5,q6);

assign out[3:0]=q0[3:0];
assign out[15:4]=q6[11:0];
endmodule

