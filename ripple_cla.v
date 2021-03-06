module ripple_cla(
    input c_in,
    input [7:0] A, B,
    output [7:0] Output,
    output c_out
);

//Connecting wires
wire temp_c;
wire [7:0] D;

//Computing for subtraction
assign D[0]=B[0]^c_in;
assign D[1]=B[1]^c_in;
assign D[2]=B[2]^c_in;
assign D[3]=B[3]^c_in;
assign D[4]=B[4]^c_in;
assign D[5]=B[5]^c_in;
assign D[6]=B[6]^c_in;
assign D[7]=B[7]^c_in;

//Calling other CLA module for computation
cla_adder CLA1(.c_in(c_in),.c_out(temp_c),.A(A[3:0]),.B(D[3:0]),.Output(Output[3:0]));
cla_adder CLA2(.c_in(temp_c),.c_out(c_out),.A(A[7:4]),.B(D[7:4]),.Output(Output[7:4]));

endmodule

