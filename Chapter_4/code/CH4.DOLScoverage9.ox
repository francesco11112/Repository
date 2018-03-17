#include <oxstd.h>
main()
{
	decl mresults = loadmat("G:\CH4.DATA1.in7");	 // load  bootstrap statistics
	decl cpos1a,cpos2a,cpos3a,cpos4a,cpos5a;	  // initialise variables
	decl mx1 = mresults[0:][0];		   // beta replications vector
	decl i;



	for (i=cpos1a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= 0.211573	&& mx1[i]<= 0.919508)		// asymptotic confidence interval
		{			   
					++cpos1a; 
		}
	}

	println("cpos1a=",cpos1a,"cpos%=",cpos1a/5000);				// print results

	for (i=cpos2a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= 0.195883	&& mx1[i]<=  1.01833)			// percentile confidence interval
		{			   
			++cpos2a;											//	compute probability
		}
	}

	println("cpos2a=",cpos2a,"cpos%=",cpos2a/5000);				// print results

	for (i=cpos3a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= 0.23206	&& mx1[i]<=	0.927964)			// BC confidence interval
		{			     
			++cpos3a; 	    	 									//	compute probability
		}
	}

	println("cpos3a=",cpos3a,"cpos%=",cpos3a/5000);				// print results
	
	
	for (i=cpos4a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= 0.21722  && mx1[i]<= 1.02953)			// BCa confidence interval
		{		 	  
			++cpos4a; 		 									//	compute probability
		}
	}

	println("cpos4a=",cpos4a,"cpos%=",cpos4a/5000);				// print results
	



	for (i=cpos5a=0; i<5000; ++i) 
	{	 		   	
		if (mx1[i] >= 0.211599  && mx1[i]<= 1.03352)			// bootstrap-t confidence interval
		{			  	
			++cpos5a;  							 				//	compute probability
		}
	}

	println("cpos5a=",cpos5a,"cpos%=",cpos5a/5000);				// print results

	
}	