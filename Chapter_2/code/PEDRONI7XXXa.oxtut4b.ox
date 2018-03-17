#include <oxstd.h>
#import <database>


main()
{
	decl i,j,z,y1,k,b,w,d,g;
	decl t = zeros(12,1);
	decl p = zeros(12,1);
	decl l = zeros(12,1);
	decl m = zeros(12,1);
	decl n = zeros(12,1);
	decl e = zeros(12,1);
	decl f = zeros(12,1);
	decl y = zeros(12,1);
	
	decl x = loadmat("G:CH2PEDRONIdata4.in7");
    print("means:", meanc(x),"size=", sizec(x));  // read in the data sets
	

	decl dbase = new Database();				 // read in the data sets
    dbase.Load("G:\CH2PEDRONIdata4.in7");			  // obtain database information
    dbase.Info();

	for (i=0; i<12; ++i)
	{
	
		t[i]= (sumc(x[0:][24+i].^2)/138) + (0.909*(sumc(x[0:][24+i].*(lag0(x[0:][24+i],1)))/138)+0.818*(sumc(x[0:][24+i].*(lag0(x[0:][24+i],2)))/138)+0.727*(sumc(x[0:][24+i].*(lag0(x[0:][24+i],3)))/138)+0.636*(sumc(x[0:][24+i].*(lag0(x[0:][24+i],4)))/138) + 0.545*(sumc(x[0:][24+i].*(lag0(x[0:][24+i],5)))/138) + 0.454*(sumc(x[0:][24+i].*(lag0(x[0:][24+i],6)))/138) + 0.363*(sumc(x[0:][24+i].*(lag0(x[0:][24+i],7)))/138) + 0.272*(sumc(x[0:][24+i].*(lag0(x[0:][24+i],8)))/138) + 0.181*(sumc(x[0:][24+i].*(lag0(x[0:][24+i],9)))/138) + 0.090*(sumc(x[0:][24+i].*(lag0(x[0:][24+i],10)))/138));	   // load the L11i data=---residuals2
	   	println("t=",t[i],"sigmaYt=", sqrt(t[i]));  // take the square and average these over T
	}
	
	for (b=0; b<12; ++b)
	{
	
		y[b]= (sumc(x[0:][12+b].^2)/138) + 2*(0.909*(sumc(x[0:][12+b]'lag0(x[0:][12+b],1))/138)+0.818*(sumc(x[0:][12+b]'lag0(x[0:][12+b],2))/138)+0.727*(sumc(x[0:][12+b]'lag0(x[0:][12+b],3))/138)+0.636*(sumc(x[0:][12+b]'lag0(x[0:][12+b],4))/138) + 0.545*(sumc(x[0:][12+b]'lag0(x[0:][12+b],5))/138) + 0.454*(sumc(x[0:][12+b]'lag0(x[0:][12+b],6))/138) + 0.363*(sumc(x[0:][12+b]'lag0(x[0:][12+b],7))/138) + 0.272*(sumc(x[0:][12+b]'lag0(x[0:][12+b],8))/138) + 0.181*(sumc(x[0:][12+b]'lag0(x[0:][12+b],9))/138) + 0.090*(sumc(x[0:][12+b]'lag0(x[0:][12+b],10))/138));	   // load the L11i data=---residuals2
	   	println("y=",y[b],"sigmaY=", sqrt(y[b]));  // take the square and average these over T
	}

	for (j=0; j<12; ++j)
	{
		p[j]= (sumc(lag0(x[0:][j],1).^2));		 // load the uit-1 data=---residuals1
		l[j]=(1/t[j])*p[j];						 // take the square and average these over T
		println("l=",l[j]);						 // invert the squared L11i and multiply by the squared uit-1
	}
	
	for (k=0; k<12; ++k)
	{
		m[k]= (sumc(lag0(x[0:][k],1).*diff0(x[0:][k],1)) );   // obtain product uit-1 times diff(uit) (NB lambda set to zero)
		n[k]=((1/t[k])*m[k])-y[k];										  // take the square of L11i invert multipy by uit's product and sum these over N
		println("n=",n[k]);
	}
	for (d=0; d<12; ++d)
	{
		e[d]= (sumc((x[0:][12+d]).^2)/138) ;	   		 // load the Git-1 data=---residuals3
		f[d]=(1/t[d])*(e[d]+2*y[d]);						// obtain si sqared, sum and find product with L11i
		println("f=",f[d]);
	}
	
		g =	(sumc(f))/12;						   // obtain squared sigma(NT)
		z = sumc(l);
		y1 = sumc(n);
		w = y1/(sqrt(g*z));						 // obtain product of two summations 
		println("g=", g,"z=", z,"y=", y1,"W=", w);
		
	delete dbase;
}
 