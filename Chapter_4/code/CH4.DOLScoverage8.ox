#include <oxstd.h>
main()
{
	decl mresults = loadmat("G:\CH4.DATA1.in7");	 // load  bootstrap statistics
	decl cpos1a,cpos2a,cpos3a,cpos4a,cpos5a;	  // initialise variables
	decl mx1 = mresults[0:][1];		   // beta replications vector
	decl i;



	for (i=cpos1a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= -0.880105	&& mx1[i]<= -0.124436)		// asymptotic confidence interval
		{			   
					++cpos1a; 
		}
	}

	println("cpos1a=",cpos1a,"cpos%=",cpos1a/5000);				// print results

	for (i=cpos2a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= -0.822129	&& mx1[i]<=  -0.045165)			// percentile confidence interval
		{			   
			++cpos2a;											//	compute probability
		}
	}

	println("cpos2a=",cpos2a,"cpos%=",cpos2a/5000);				// print results

	for (i=cpos3a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= -1.09733	&& mx1[i]<=	-0.43633)			// BC confidence interval
		{			     
			++cpos3a; 	    	 									//	compute probability
		}
	}

	println("cpos3a=",cpos3a,"cpos%=",cpos3a/5000);				// print results
	
	
	for (i=cpos4a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= -0.744716  && mx1[i]<= 0.0270205)			// BCa confidence interval
		{		 	  
			++cpos4a; 		 									//	compute probability
		}
	}

	println("cpos4a=",cpos4a,"cpos%=",cpos4a/5000);				// print results
	



	for (i=cpos5a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= -0.74146  && mx1[i]<= 0.0297416)			// bootstrap-t confidence interval
		{			  	
			++cpos5a;  							 				//	compute probability
		}
	}

	println("cpos5a=",cpos5a,"cpos%=",cpos5a/5000);				// print results

	
}	