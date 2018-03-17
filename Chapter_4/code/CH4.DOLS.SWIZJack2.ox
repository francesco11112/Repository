#include <oxstd.h>

main()
{
	decl mx,mean1,mean,my1,my2,my3,my4,my5,my6,my7,my8,my9,my10,zzz,a1,a2,aa1,aa2;
	decl mresults = zeros(1654,6);						   // initialising variables
	decl my = zeros(1,136);							    // initialising variables
	
	mx = loadmat("G:\CH4.TextDOLStest.in7");			// loading data ie dummy variables p_t p^*_t and delta p_t, delta p^*_t, etc

	mean = meanc(mx[0:][0]);
	mean1 = meanc(mx[0:][1]);

	println("mean=",mean,"mean1=",mean1);

	for (zzz=0; zzz<1654; ++zzz)	  // start Jackknife simulation 
	{
	my1 = mx[zzz][0]-mean;
	mresults[zzz][0]= my1;
	my2 = mx[zzz][1]-mean1;
	mresults[zzz][1]= my2;
	my3 =(mean-mx[zzz][0])^3;
	mresults[zzz][2]= my3;
	my4 =(mean-mx[zzz][0])^2;
	mresults[zzz][3]= my4;

	my7 =(mean1-mx[zzz][1])^3;
	mresults[zzz][4]= my7;
	my8 =(mean1-mx[zzz][1])^2;
	mresults[zzz][5]= my8;

	}
	my5 = sumc(mresults[0:][2]);
	my6 = sumc(mresults[0:][3]);
	my9 = sumc(mresults[0:][4]);
	my10 = sumc(mresults[0:][5]);
	
	aa1 = my5/(my6)^1.5;
	aa2 = my9/(my10)^1.5;

	a1 = aa1/6;
	a2 = aa2/6;
	
	println("a1=",a1,"a2=",a2);
	
}
