#include <oxstd.h>
main()
{
	decl mresults = loadmat("G:\TextDOLSChaptertest1.in7");	 // load  bootstrap statistics
	decl cpos1a,cpos2a,cpos3a,cpos4a,cpos5a;	  // initialise variables
	decl mx1 = mresults[0:][1];		   // beta replications vector
	decl i;



	for (i=cpos1a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= -1.14749	&& mx1[i]<= -1.03650)		// asymptotic confidence interval
		{			    
					++cpos1a; 
		}
	}

	println("cpos1a=",cpos1a,"cpos%=",cpos1a/5000);				// print results

	for (i=cpos2a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= -1.23448	&& mx1[i]<= -1.00678)			// percentile confidence interval
		{			   
			++cpos2a;											//	compute probability
		}
	}

	println("cpos2a=",cpos2a,"cpos%=",cpos2a/5000);				// print results

	for (i=cpos3a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= -1.17511	&& mx1[i]<=	 -0.94284)			// BC confidence interval
		{
			++cpos3a; 	    	 									//	compute probability
		}
	}

	println("cpos3a=",cpos3a,"cpos%=",cpos3a/5000);				// print results
	
	
	for (i=cpos4a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= -1.17407 	&& mx1[i]<=	-0.940344)			// BCa confidence interval
		{				  
			++cpos4a; 		 									//	compute probability
		}
	}

	println("cpos4a=",cpos4a,"cpos%=",cpos4a/5000);				// print results
	



	for (i=cpos5a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= -1.17652 && mx1[i]<= -0.95315)			// bootstrap-t confidence interval
		{				
			++cpos5a;  							 				//	compute probability
		}
	}

	println("cpos5a=",cpos5a,"cpos%=",cpos5a/5000);				// print results

	
}	