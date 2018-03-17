#include <oxstd.h>
#import <database>


main()
{
	decl i,j,z,y;
	decl t = zeros(12,1);
	decl p = zeros(12,1);
	decl l = zeros(12,1);
	decl x = loadmat("G:\CH2PEDRONIdata4.in7");	 // read in the data sets
    print("means:", meanc(x));
	

	decl dbase = new Database();		  // read in the data sets
    dbase.Load("G:\CH2PEDRONIdata4.in7");	 // obtain database information
    dbase.Info();

	for (i=0; i<12; ++i)
	{
		t[i]= (sumc(x[0:][24+i].^2)/138) + 2*(0.909*(sumc(x[0:][24+i]'lag0(x[0:][24+i],1))/138)+0.818*(sumc(x[0:][24+i]'lag0(x[0:][24+i],2))/138)+0.727*(sumc(x[0:][24+i]'lag0(x[0:][24+i],3))/138)+0.636*(sumc(x[0:][24+i]'lag0(x[0:][24+i],4))/138) + 0.545*(sumc(x[0:][24+i]'lag0(x[0:][24+i],5))/138) + 0.454*(sumc(x[0:][24+i]'lag0(x[0:][24+i],6))/138) + 0.363*(sumc(x[0:][24+i]'lag0(x[0:][24+i],7))/138) + 0.272*(sumc(x[0:][24+i]'lag0(x[0:][24+i],8))/138) + 0.181*(sumc(x[0:][24+i]'lag0(x[0:][24+i],9))/138) + 0.090*(sumc(x[0:][24+i]'lag0(x[0:][24+i],10))/138));	   // load the L11i data=---residuals2
		println("t=",t[i],"sigmaY=", sqrt(t[i]));  // take the square and sum these over N
	}

	for (j=0; j<12; ++j)
	{
		p[j]= (sumc(lag0(x[0:][j],1).^2));  // load the uit-1 data=---residuals1
		l[j]=(1/t[j])*p[j];					   // take the square and sum these over N
		print("l=",l[j]);					   // invert the squared L11i and multiply by the squared uit-1
	}
	println("la=",l);
	z = sumc(l);						
	y = (1/z)*19044*(sqrt(12)^3);         	  // multiply the inverted sum of residuals by powers of N and T
	println("y=",y);
	delete dbase;
}
