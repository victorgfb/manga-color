module classificador(frameclk,clk,ri,gi,bi,ro,go,bo,pixy_qtd,s, s_count);

input frameclk;
input		clk;
input		[7:0]	ri;
input		[7:0]	gi;
input		[7:0]	bi;

output reg	[7:0]	ro;
output reg	[7:0]	go;
output reg	[7:0]	bo;
output reg	[31:0]	pixy_qtd;
output reg	[31:0]	s;
output reg	[31:0]	s_count = 32'h00000000;

reg [31:0] ycounter;// = 32'h00000000;
reg [7:0] max, min;
reg [31:0] h=32'h00000000;
reg [31:0] v=32'h00000000;
reg [31:0] fqtd = 32'h00000000;
reg [11:0] raux ;
reg [11:0] gaux ;
reg [11:0] baux ;
	
always@(posedge clk or negedge frameclk)
begin
	if(!frameclk) ycounter <=0;
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
		
		if(h<32'h00000046 && h>32'h0000002A && s>32'h00000028 && v>= 32'h00000041) 
		begin
			ro<=ri;
			go<=gi;
			bo<=bi;
			ycounter<=ycounter+1;
		end
		else
		begin
			ro<=ri;
			go<=gi;
			bo<=bi;
		end

		
	end	

end

always@(posedge clk or negedge frameclk)
begin
	if (!frameclk) pixy_qtd <= 0;	
	else pixy_qtd <= ycounter;	
end


endmodule