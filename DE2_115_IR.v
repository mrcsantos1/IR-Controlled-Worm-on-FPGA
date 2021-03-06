module DE2_115_IR
	(
		//////// CLOCK //////////
		CLOCK_50,
		
		KEY,
		
		//////// IR Receiver //////////
		IRDA_RXD,
		
		
		
	);

//===========================================================================
// PARAMETER declarations
//===========================================================================

//===========================================================================
// PORT declarations
//===========================================================================
//////////// CLOCK //////////
input		          		CLOCK_50;
//////////// KEY //////////
input		     [3:0]		KEY;

//////////// IR Receiver //////////
input		          		IRDA_RXD;

///////////////////////////////////////////////////////////////////
//=============================================================================
// REG/WIRE declarations
//=============================================================================

wire    data_ready;        //IR data_ready flag
wire    [31:0] hex_data;   //seg data input
wire    clk50;             //pll 50M output for irda

//=============================================================================
// Structural coding
//=============================================================================
 
pll1 u0(
		.inclk0(CLOCK_50),
		//irda clock 50M 
		.c0(clk50),          
		.c1());

IR_RECEIVE u1(
					///clk 50MHz////
					.iCLK(clk50), 
					//reset          
					.iRST_n(KEY[0]),        
					//IRDA code input
					.iIRDA(IRDA_RXD), 
					//read command      
					//.iREAD(data_read),
					//data ready      					
					.oDATA_READY(data_ready),
					//decoded data 32bit
					.oDATA(hex_data)        
					);
					
endmodule

