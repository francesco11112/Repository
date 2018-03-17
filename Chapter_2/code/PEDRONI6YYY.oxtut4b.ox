#include <oxstd.h>
#import <database>


main()
{
	decl i,j,z,y1,k,w,b,Test;
	decl t = zeros(20,1);
	decl p = zeros(20,1);
	decl l = zeros(20,1);
	decl m = zeros(20,1);
	decl n = zeros(20,1);
	decl y = zeros(20,1);
	
	decl x = loadmat("G:\CH4-pedroniTESTDATA1.in7");	
    print("means:", meanc(x));
	

	decl dbase = new Database();
    dbase.Load("G:\CH4-pedroniTESTDATA1.in7");
    dbase.Info();
				 
	for (i=0; i<20; ++i)
	{
	
		t[i]= (sumc(x[0:][40+i].^2)/39) + 2*(0.8*(sumc(x[0:][40+i]'lag0(x[0:][40+i],1))/39)+0.6*(sumc(x[0:][40+i]'lag0(x[0:][40+i],2))/39)+0.4*(sumc(x[0:][40+i]'lag0(x[0:][40+i],3))/39)+0.2*(sumc(x[0:][40+i]'lag0(x[0:][40+i],4))/39));	   // load the L11i data=---residuals2
		println("t=",t[i],"sigmaYt=", sqrt(t[i]));  // take the square and average these over T
	}
	
	for (b=0; b<20; ++b)
	{
	
		y[b]= (sumc(x[0:][20+b].^2)/39) + 2*(0.8*(sumc(x[0:][20+b]'lag0(x[0:][20+b],1))/39)+0.6*(sumc(x[0:][20+b]'lag0(x[0:][20+b],2))/39)+0.4*(sumc(x[0:][20+b]'lag0(x[0:][20+b],3))/39)+0.2*(sumc(x[0:][20+b]'lag0(x[0:][20+b],4))/39)) ;
		println("y=",y[b],"sigmaY=", sqrt(y[b]));  // take the square and average these over T
	}
	
	
	for (j=0; j<20; ++j)
	{
		p[j]= (sumc(lag0(x[0:][j],1).^2));	// load the uit-1 data=---residuals1
		l[j]=(1/t[j])*p[j];					// take the square and sum these over T
		println("l=",l[j]);					// invert the squared L11i and multiply by the squared uit-1
	}
	
	for (k=0; k<20; ++k)
	{
		m[k]= (sumc(lag0(x[0:][k],1).*diff0(x[0:][k],1)));  // obtain product uit-1 times diff(uit) (NB lambda set to zero)
		n[k]=((1/t[k])*m[k])-y[k];					 // take the square of L11i invert multipy by uit's product and sum these over N
		println("n=",n[k]);				 // obtain product of two summations
	}
		z = sumc(l);					 // sum product over N
		println("z=",z);
		y1 = sumc(n);
		println("y=",y1);									// sum product over N
		w = (174.413)*(1/z)*y1;			// multiply sum by powers of N and T
		println("W=", w);
		Test=(w+9.495*4.472)/7.59;
		println("Test Statistic=",Test);
		
	delete dbase;
}
