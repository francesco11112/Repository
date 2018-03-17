#include <oxstd.h>
#import <database>


main()
{
	decl i,j,z,y,Test;
	decl t = zeros(20,1);
	decl p = zeros(20,1);
	decl l = zeros(20,1);
	decl x = loadmat("G:\CH4-pedroniTESTDATA2.in7");	 // read in the data sets
    print("means:", meanc(x));
	

	decl dbase = new Database();		  // read in the data sets
    dbase.Load("G:\CH4-pedroniTESTDATA2.in7");	 // obtain database information
    dbase.Info();

	for (i=0; i<20; ++i)
	{
		t[i]= (sumc(x[0:][40+i].^2)/39) + 2*(0.8*(sumc(x[0:][40+i]'lag0(x[0:][40+i],1))/39)+0.6*(sumc(x[0:][40+i]'lag0(x[0:][40+i],2))/39)+0.4*(sumc(x[0:][40+i]'lag0(x[0:][40+i],3))/39)+0.2*(sumc(x[0:][40+i]'lag0(x[0:][40+i],4))/39));	   // load the L11i data=---residuals2
		println("t=",t[i],"sigmaY=", sqrt(t[i]));  // take the square and sum these over N
	}

	for (j=0; j<20; ++j)
	{
		p[j]= (sumc(lag0(x[0:][j],1).^2));  // load the uit-1 data=---residuals1
		l[j]=(1/t[j])*p[j];					   // take the square and sum these over N
		print("l=",l[j]);					   // invert the squared L11i and multiply by the squared uit-1
	}
	println("la=",l);
	z = sumc(l);						
	y = (1/z)*1521*(sqrt(20)^3);         	  // multiply the inverted sum of residuals by powers of N and T
	println("y=",y);
	Test=(y-21.162*4.472)/12.65;
	println("Test Statistic=",Test);
	delete dbase;
}
