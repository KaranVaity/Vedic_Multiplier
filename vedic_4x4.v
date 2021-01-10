module vedic_4x4(
input [3:0] a, b,
output [7:0] out);

wire [3:0] q0,q1,q2,q3,temp1;
wire [5:0] q4,q5,q6,temp2,temp3,temp4;


vedic_2x2 v0(a[1:0],b[1:0],q0[3:0]);
vedic_2x2 v1(a[3:2],b[1:0],q1[3:0]);
vedic_2x2 v2(a[1:0],b[3:2],q2[3:0]);
vedic_2x2 v3(a[3:2],b[3:2],q3[3:0]);
assign temp1 ={2'b0,q0[3:2]};
full_adder4 fa0(temp1,q1,q4);
assign temp2 ={2'b0,q2[3:0]};
assign temp3 ={q3[3:0],2'b0};
full_adder6 fa1(temp3,temp2,q5);
assign temp4={2'b0,q4[3:0]};
full_adder6 fa2(temp4,q5,q6);

assign out[1:0]=q0[1:0];
assign out[7:2]=q6[5:0];
endmodule

