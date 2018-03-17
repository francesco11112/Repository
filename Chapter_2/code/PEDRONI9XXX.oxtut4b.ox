#include <oxstd.h>
#import <database>


main()
{
	decl i,j,z,b,k,y,w;
	decl t = zeros(12,1);
	decl p = zeros(12,1);
	decl l = zeros(12,1);
	decl m = zeros(12,1);
	decl u = zeros(12,1);
	decl e = zeros(12,1);
	decl f = zeros(12,1);
	
	decl x = loadmat("G:\CH2PEDRONIdata4.in7");
    print("means:", meanc(x));				   // analysis follows as in earlier panel statistics
	

	decl dbase = new Database();
    dbase.Load("G:\CH2PEDRONIdata4.in7");
    dbase.Info();

	for (b=0; b<12; ++b)
	{
	
		t[b]= (sumc(x[0:][12+b].^2)/138) + 2*(0.909*(sumc(x[0:][12+b]'lag0(x[0:][12+b],1))/138)+0.818*(sumc(x[0:][12+b]'lag0(x[0:][12+b],2))/138)+0.727*(sumc(x[0:][12+b]'lag0(x[0:][12+b],3))/138)+0.636*(sumc(x[0:][12+b]'lag0(x[0:][12+b],4))/138) + 0.545*(sumc(x[0:][12+b]'lag0(x[0:][12+b],5))/138) + 0.454*(sumc(x[0:][12+b]'lag0(x[0:][12+b],6))/138) + 0.363*(sumc(x[0:][12+b]'lag0(x[0:][12+b],7))/138) + 0.272*(sumc(x[0:][12+b]'lag0(x[0:][12+b],8))/138) + 0.181*(sumc(x[0:][12+b]'lag0(x[0:][12+b],9))/138) + 0.090*(sumc(x[0:][12+b]'lag0(x[0:][12+b],10))/138));	   // load the L11i data=---residuals2
	   	println("t=",t[b],"sigmaYt=", sqrt(t[b]));  // take the square and average these over T
	}

	for (j=0; j<12; ++j)
	{
		p[j]= (sumc(lag0(x[0:][j],1).^2));
	}
	
	for (k=0; k<12; ++k)
	{
		m[k]= (sumc(lag0(x[0:][k],1).*diff0(x[0:][k],1))) ;
	}

	for (i=0; i<12; ++i)
	{

		e[i]= (sumc((x[0:][12+i]).^2)/138) ;	   		 // load the Git-1 data=---residuals3
		f[i]= (e[i]+2*t[i]);		
		u[i] = (m[i]-t[i])/sqrt(p[i]*f[i]) ;	   		 // load the Git-1 data=---residuals3

	}

		z = 0.28867*sumc(u);
		println("z=", z);
		
	delete dbase;
}
