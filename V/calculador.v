module calculador(clk,pixy_qtd,px_qtd,perc);

input clk;
input [31:0] pixy_qtd;
input [31:0] px_qtd;
output reg [31:0] perc;

always@(posedge clk)
begin
	if(px_qtd==0) perc <= 0;
	else	perc <= ((pixy_qtd * 100) / px_qtd) ;
end

endmodule