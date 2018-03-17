#include <oxstd.h>


	
		
		
		
main()
{
	decl Sigma = zeros(3,3);
	decl SumSigma = zeros(0,1);
	decl cPlus = zeros(1,1656);
	decl e1Plus = zeros(0,1656);
	decl e2Plus = zeros(0,1656);
	decl Sigmahat = zeros(0,1);
	decl sigma1,sigma2v,sigma,sigma11,sigma21,sigma22,sigma22inv,sigmax,sigmax2,mx;

	println("Computation of Kao statistic sigma2_v");

	
	mx=loadmat("G:\\KAO12.TestData1.in7");	// enter code
	cPlus = mx[0:][0];
	e1Plus = mx[0:][1];
	e2Plus = mx[0:][2];
	sigma1 = cPlus~e1Plus~e2Plus;
	sigmax = sigma1'sigma1;
	sigma = sigmax./1656;
	println("sigma=",sigma);
	sigma21 = sigma[0][1:2];
	sigma22 = sigma[1:2][1:2];
	sigma11 = sigma[0][0];
	println("rowssigma1=",rows(sigma1),"colssigma1=",columns(sigma1));
	sigma22inv = invert(sigma22);
	sigma2v =sigma11-sigma21*sigma22inv*sigma21';
	println("sigma2v=",sigma2v);
}
