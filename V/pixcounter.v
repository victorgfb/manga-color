module pixcounter(clk,rst_n,r,g,b,pix_qtd,ikey3);

input clk;
input rst_n;
input ikey3;
input  [7:0] r;
input  [7:0] g;
input  [7:0] b;
output [31:0] pix_qtd;

//reg [7:0] preto = 8'h00;
reg [31:0] counter;
reg 			estado;

assign pix_qtd = counter;

//always @(posedge clk or posedge ikey3 or negedge rst_n)
//always @(posedge clk or negedge rst_n)
//begin
//	//if(ikey3 || !rst_n)
//	if(!rst_n)
//		estado <=0;
//	else
//		estado <=1;
//end

always@(posedge clk or negedge rst_n)
begin
	if(!rst_n)
		counter <=0; //counter <= 0;
	else if(r !=8'h00 && g !=8'h00 && b !=8'h00)
		counter <= counter+1;

end

endmodule