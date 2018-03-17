#include <oxstd.h>
#import <database>


main()
{
	decl i,j,z,b,k,y,w,Test;
	decl t = zeros(20,1);
	decl p = zeros(20,1);
	decl l = zeros(20,1);
	decl m = zeros(20,1);
	decl u = zeros(20,1);
	decl e = zeros(20,1);
	decl f = zeros(20,1);
	
	decl x = loadmat("G:\CH4-pedroniTESTDATA2.in7");
    print("means:", meanc(x));				   // analysis follows as in earlier panel statistics
	

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
		m[k]= (sumc(lag0(x[0:][k],1).*diff0(x[0:][k],1))) ;
	}

	for (i=0; i<20; ++i)
	{

		e[i]= (sumc((x[0:][20+i]).^2)/39) ;	   		 // load the Git-1 data=---residuals3
		f[i]= (e[i]+2*t[i]);		
		u[i] = (m[i]-t[i])/sqrt(p[i]*f[i]) ;	   		 // load the Git-1 data=---residuals3

	}

		z = 0.2236*sumc(u);
		println("z=", z);
		Test=(z+2.872*4.472)/0.744;
		println("Test Statistic=",Test);
		
	delete dbase;
}
