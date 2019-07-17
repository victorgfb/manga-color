// --------------------------------------------------------------------
// Copyright (c) 2007 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------
//
// Major Functions:	SEG7_LUT_8
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| Johnny FAN        :| 07/07/09  :| Initial Revision
// --------------------------------------------------------------------

module SEG7_LUT_8 ( oSEG0,oSEG1,oSEG2,oSEG3,oSEG4,oSEG5,oSEG6,oSEG7,iDIG );
//input clk;
input	[31:0]	iDIG;
output reg	[6:0]	oSEG0,oSEG1,oSEG2,oSEG3,oSEG4,oSEG5,oSEG6,oSEG7;

always@(iDIG)
begin
	{oSEG3,oSEG4,oSEG5,oSEG6,oSEG7} =  {7'd64, 7'd64, 7'd64,7'd64,7'd64};
	case(iDIG)
		32'd0:   {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd64, 7'd64  };
		32'd1:   {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd64, 7'd121 };	
		32'd2:   {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd64, 7'd36  };	
		32'd3:   {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd64, 7'd48  };	
		32'd4:   {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd64, 7'd25  };	
		32'd5:   {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd64, 7'd18  };	
		32'd6:   {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd64, 7'd2   };	
		32'd7:   {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd64, 7'd120 };	
		32'd8:   {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd64, 7'd0   };	
		32'd9:   {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd64, 7'd24  };
		32'd10:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd121, 7'd64 };
		32'd11:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd121, 7'd121};	
		32'd12:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd121, 7'd36 };	
		32'd13:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd121, 7'd48 };	
		32'd14:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd121, 7'd25 };	
		32'd15:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd121, 7'd18 };	
		32'd16:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd121, 7'd2  };	
		32'd17:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd121, 7'd120};	
		32'd18:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd121, 7'd0  };	
		32'd19:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd121, 7'd24 };
		32'd20:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd36, 7'd64  };
		32'd21:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd36, 7'd121 };	
		32'd22:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd36, 7'd36  };	
		32'd23:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd36, 7'd48  };	
		32'd24:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd36, 7'd25  };	
		32'd25:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd36, 7'd18  };	
		32'd26:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd36, 7'd2   };	
		32'd27:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd36, 7'd120 };	
		32'd28:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd36, 7'd0   };	
		32'd29:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd36, 7'd24  };
		32'd30:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd48, 7'd64  };
		32'd31:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd48, 7'd121 };	
		32'd32:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd48, 7'd36  };	
		32'd33:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd48, 7'd48  };	
		32'd34:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd48, 7'd25  };	
		32'd35:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd48, 7'd18  };	
		32'd36:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd48, 7'd2   };	
		32'd37:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd48, 7'd120 };	
		32'd38:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd48, 7'd0   };	
		32'd39:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd48, 7'd24  };
		32'd40:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd25, 7'd64  };
		32'd41:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd25, 7'd121 };	
		32'd42:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd25, 7'd36  };	
		32'd43:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd25, 7'd48  };	
		32'd44:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd25, 7'd25  };	
		32'd45:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd25, 7'd18  };	
		32'd46:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd25, 7'd2   };	
		32'd47:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd25, 7'd120 };	
		32'd48:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd25, 7'd0   };	
		32'd49:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd25, 7'd24  };
		32'd50:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd18, 7'd64  };
		32'd51:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd18, 7'd121 };	
		32'd52:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd18, 7'd36  };	
		32'd53:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd18, 7'd48  };	
		32'd54:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd18, 7'd25  };	
		32'd55:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd18, 7'd18  };	
		32'd56:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd18, 7'd2   };	
		32'd57:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd18, 7'd120 };	
		32'd58:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd18, 7'd0   };	
		32'd59:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd18, 7'd24  };
		32'd60:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd2, 7'd64   };
		32'd61:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd2, 7'd121  };	
		32'd62:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd2, 7'd36   };
		32'd63:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd2, 7'd48   };
		32'd64:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd2, 7'd25   };
		32'd65:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd2, 7'd18   };
		32'd66:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd2, 7'd2    };
		32'd67:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd2, 7'd120  };
		32'd68:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd2, 7'd0    };
		32'd69:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd2, 7'd24   };
		32'd70:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd120, 7'd64 };
		32'd71:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd120, 7'd121};	
		32'd72:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd120, 7'd36 };	
		32'd73:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd120, 7'd48 };	
		32'd74:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd120, 7'd25 };	
		32'd75:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd120, 7'd18 };	
		32'd76:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd120, 7'd2  };	
		32'd77:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd120, 7'd120};	
		32'd78:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd120, 7'd0  };	
		32'd79:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd120, 7'd24 };
		32'd80:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd0, 7'd64   };
		32'd81:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd0, 7'd121  };
		32'd82:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd0, 7'd36   };
		32'd83:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd0, 7'd48   };
		32'd84:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd0, 7'd25   };
		32'd85:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd0, 7'd18   };
		32'd86:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd0, 7'd2    };
		32'd87:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd0, 7'd120  };
		32'd88:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd0, 7'd0    };
		32'd89:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd0, 7'd24   };
		32'd90:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd24, 7'd64  };
		32'd91:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd24, 7'd121 };	
		32'd92:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd24, 7'd36  };	
		32'd93:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd24, 7'd48  };	
		32'd94:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd24, 7'd25  };	
		32'd95:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd24, 7'd18  }; 	
		32'd96:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd24, 7'd2   };	
		32'd97:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd24, 7'd120 };	
		32'd98:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd24, 7'd0   }; 	
		32'd99:  {oSEG2,oSEG1,oSEG0} =  {7'd64, 7'd24, 7'd24  }; 
		32'd100: {oSEG2,oSEG1,oSEG0} =  {7'd121, 7'd64, 7'd64 };	
	endcase

end
/*


SEG7_LUT	u0	(	oSEG0,iDIG[3:0],clk   );
SEG7_LUT	u1	(	oSEG1,iDIG[7:4],clk   );
SEG7_LUT	u2	(	oSEG2,iDIG[11:8],clk  );
SEG7_LUT	u3	(	oSEG3,iDIG[15:12],clk	);
SEG7_LUT	u4	(	oSEG4,iDIG[19:16],clk	);
SEG7_LUT	u5	(	oSEG5,iDIG[23:20],clk	);
SEG7_LUT	u6	(	oSEG6,iDIG[27:24],clk	);
SEG7_LUT	u7	(	oSEG7,iDIG[31:28],clk	);
*/
endmodule