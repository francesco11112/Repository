#include <oxstd.h>
#import <database>


main()
{
	decl i,j,z,y,k,b,w,Test;
	decl t = zeros(20,1);
	decl p = zeros(20,1);
	decl l = zeros(20,1);
	decl m = zeros(20,1);
	decl u = zeros(20,1);
	
	decl x = loadmat("G:\CH4-pedroniTESTDATA2.in7");		 // analysis follows as in earlier panel statistics
    print("means:", meanc(x));
	

	decl dbase = new Database();
    dbase.Load("G:\CH4-pedroniTESTDATA2.in7");
    dbase.Info();

	for (b=0; b<20; ++b)
	{
	
		t[b]= (sumc(x[0:][20+b].^2)/39) + 2*(0.8*(sumc(x[0:][20+b]'lag0(x[0:][20+b],1))/39)+0.6*(sumc(x[0:][20+b]'lag0(x[0:][20+b],2))/39)+0.4*(sumc(x[0:][20+b]'lag0(x[0:][20+b],3))/39)+0.2*(sumc(x[0:][20+b]'lag0(x[0:][20+b],4))/39)) ;
		println("t=",t[b],"sigmaY=", sqrt(t[b]));  // take the square and average these over T
	}
	

	for (j=0; j<20; ++j)
	{
		p[j]= (sumc(lag0(x[0:][j],1).^2));
	}
	
	for (k=0; k<20; ++k)
	{
		m[k]= (sumc(lag0(x[0:][k],1).*diff0(x[0:][k],1)))    ;
	}

	for (y=0; y<20; ++y)
	{
		u[y] =(m[y]-t[y])/p[y];
	}

		z = sumc(u);
		w = 8.72066*z;
		println("W=", w);
		Test=(w+17.359*4.472)/8.14;
		println("Test Statistic=",Test);	
		
	delete dbase;
}
