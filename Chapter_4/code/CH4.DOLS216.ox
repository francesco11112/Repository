#include <oxstd.h>
main()
{
	decl mresults = loadmat("G:\TextDOLSChaptertest1.in7");
	decl cpos1,cpos2,j,i;
	decl mx1 = mresults[0:][0];
	decl mx2 = mresults[0:][1];

	for (i=cpos1=0; i<5000; ++i) 
	{
		if (mx1[i]<1.0548)		// enter code
		{
			++cpos1; 
		}
	}

	println("cpos1=",cpos1,"cpos%=",cpos1/5000);

	for (j=cpos2=0; j<5000; ++j) 
	{
		if (mx2[j]< -1.0920 )		// enter code
		{
			++cpos2; 
		}
	}

	println("cpos2=",cpos2,"cpos%=",cpos2/5000);

}	