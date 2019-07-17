module separador(clk,frameclk,ri,gi,bi,r,g,b,pixqtd);

input clk;
input frameclk;
input [7:0] ri;
input [7:0] gi;
input [7:0] bi;

output reg [7:0] r;
output reg [7:0] g;
output reg [7:0] b;
output [31:0] pixqtd;
reg [31:0]	s;
reg [31:0] qtd;
reg [7:0] max, min;
reg [31:0] h=32'h00000000;
reg [31:0] v=32'h00000000;

assign pixqtd = qtd;

always@(posedge clk or negedge frameclk)
begin
	//if(red == green && green == blue)
	if(!frameclk)qtd<=0;
	else 
	begin
		max = (ri>bi && ri>gi)?ri:((bi>ri && bi>gi)?bi:gi);
		min = (ri<bi && ri<gi)?ri:((bi<ri && bi<gi)?bi:gi);
		
		if(max==ri && gi>=bi)
		begin
			h <=  60 * (gi-bi)/(max-min);
		end
		else if(max==ri && gi<bi)
		begin
			h <= (60 * (gi-bi)/(max-min))+360;
		end
		else if(max==gi)
		begin
			h <= (60 * (bi-ri)/(max-min)) + 120;
		end
		else
		begin
			h <= (60 * (ri-gi)/(max-min)) + 240;
		end
		
		s <= (100 * (max-min))/max;
		v <= max;
		
		//red == green && green == blue || (red < blue && green < blue
		
		if(( h > 0 &&  h < 141) && ( v > 10) && (s > 30))
			begin
				r <= ri;
				g <= gi;
				b <= bi;
				qtd <= qtd+1;
			end
		else		
			begin
				r <= ri;
				g <= gi;
				b <= bi;
			end


	end
	
end

endmodule