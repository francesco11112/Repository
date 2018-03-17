#include <oxstd.h>

#include<oxstd.h>

main()
{
{
		//initialising variables
		decl Gamma22Hat = zeros(2,2);	// enter code
		decl Gamma21Hat = zeros(2,1);
		decl Gamma = zeros(2,1);		// enter code
		decl GammaHat = zeros(2,1);
		decl Omega22Hat = zeros(2,2);	// enter code
		decl Omega21Hat = zeros(2,1);
		decl Omega11Hat,Omega11HatPlus,sumOmega1,sumOmega2,sumOmega3,sumOmega4,sumOmega5,sumOmega6,sumOmega7,sumOmega8,sumOmega9;
		decl sumOmega10,sumOmega11,sumOmega12,sumOmega13,sumOmega14,sumOmega15,sumOmega16,sumOmega17,sumOmega18,sumOmega19;
		decl sumGamma1,sumGamma2,sumGamma11,sumGamma12,sumGamma21,sumGamma22;
		decl DW,Fstat1,Fstat2,Fstat,amsval,DXX,R,Ra,Rb,R2,c1,PrimeGammaHat,mx,i,y,yHat,x1,x2,x3,X,b,OLSbPlus,Delta1,Delta2,tPlus,Delta3,Delta4,tPlusPlus,T,N,amxinv,c,e1,e2,rho,rhoHat,Omega22Hatinv,t,w,d,p,q;
		decl OLSbPlus1,Omega1,Omega2,Omega3,Omega4,Omegastar,Omega1inv,P1,P2,P11,dd,ZZ1,ZZ2,OLSbPlusPlus,amx1inv;
		decl Sigma22Hat,Sigma,Sigma22Hatinv,Omegabarsigma2,OmegabarPrimeinv;
		decl SigmaHat=zeros(3,3);
		decl SumSigma = zeros(0,1);
		decl Omegabar = zeros(3,3);
		decl OmegabarPrime = zeros(3,3);
		
		
		println("Computation of Kao statistic sigma2_0v");
																			   									   
		decl GammaHatbar,PrimeGammaHatbar,OLSbPlusNumerator;
		decl SumOLSbPlusNumerator = zeros(1,3);

		
		// load data-matrix
		mx=loadmat("G:\\KAO12.TestData4.in7");

	//initialising variables

		for(i=0;i<12;++i)
		{
		
		// set X,y,b parameters
		y = mx[0:][0+(4*i)];
		x1 = mx[0:][1+(4*i)];
		x2 = mx[0:][2+(4*i)];
		x3 = mx[0:][3+(4*i)];
		X = x1~x2~x3;
		T = 138;
		N = 12;
		olsc(y,X,&b,&amxinv);	   // OLS estimation
		println("Estimates of country regression ",i);
		println("OLS b=",b);
		c=y-X*b;
		d=c'c/(T-1);
		w=sqrt(d)*sqrt(amxinv);
		p=diagonal(w);
		q=p';
		t=b./q;
		Ra=c'c;
		Rb=y'y;
		R=Ra/Rb;
		R2=1-R;
		DW=(c-lag0(c,1))'(c-lag0(c,1))/Ra;
		Fstat1=R2*(T-3);
		Fstat2=(1-R2)*2;
		Fstat=Fstat1/Fstat2;
		eigensym(X'X,&amsval);
		
		println("t-values=",t);
		e1=x2-lag0(x2,1);
		e2=x3-lag0(x3,1);
		


		//code for Omega22Hat
		sumOmega1=e1'e1/(T-1);
		sumOmega2 = (2/(T-1))*((10/11)*e1'(lag0(e1,1))+(9/11)*e1'(lag0(e1,2))+(8/11)*e1'(lag0(e1,3))+(7/11)*e1'(lag0(e1,4))+(6/11)*e1'(lag0(e1,5))+(5/11)*e1'(lag0(e1,6))+(4/11)*e1'(lag0(e1,7))+(3/11)*e1'(lag0(e1,8))+(2/11)*e1'(lag0(e1,9))+(1/11)*e1'(lag0(e1,10)));	// compute HAC1 standard errors
		sumOmega3=e1'e2/(T-1);
		sumOmega4= (1/(T-1))*((10/11)*e2'(lag0(e1,1))+(9/11)*e2'(lag0(e1,2))+(8/11)*e2'(lag0(e1,3))+(7/11)*e2'(lag0(e1,4))+(6/11)*e2'(lag0(e1,5))+(5/11)*e2'(lag0(e1,6))+(4/11)*e2'(lag0(e1,7))+(3/11)*e2'(lag0(e1,8))+(2/11)*e2'(lag0(e1,9))+(1/11)*e2'(lag0(e1,10)));	// compute HAC1 standard errors
		sumOmega5= (1/(T-1))*((10/11)*e1'(lag0(e2,1))+(9/11)*e1'(lag0(e2,2))+(8/11)*e1'(lag0(e2,3))+(7/11)*e1'(lag0(e2,4))+(6/11)*e1'(lag0(e2,5))+(5/11)*e1'(lag0(e2,6))+(4/11)*e1'(lag0(e2,7))+(3/11)*e1'(lag0(e2,8))+(2/11)*e1'(lag0(e2,9))+(1/11)*e1'(lag0(e2,10)));	// compute HAC1 standard errors
		sumOmega6=e2'e1/(T-1);
		sumOmega7= (1/(T-1))*((10/11)*e2'(lag0(e1,1))+(9/11)*e2'(lag0(e1,2))+(8/11)*e2'(lag0(e1,3))+(7/11)*e2'(lag0(e1,4))+(6/11)*e2'(lag0(e1,5))+(5/11)*e2'(lag0(e1,6))+(4/11)*e2'(lag0(e1,7))+(3/11)*e2'(lag0(e1,8))+(2/11)*e2'(lag0(e1,9))+(1/11)*e2'(lag0(e1,10)));	// compute HAC1 standard errors
		sumOmega8= (1/(T-1))*((10/11)*e1'(lag0(e2,1))+(9/11)*e1'(lag0(e2,2))+(8/11)*e1'(lag0(e2,3))+(7/11)*e1'(lag0(e2,4))+(6/11)*e1'(lag0(e2,5))+(5/11)*e1'(lag0(e2,6))+(4/11)*e1'(lag0(e2,7))+(3/11)*e1'(lag0(e2,8))+(2/11)*e1'(lag0(e2,9))+(1/11)*e1'(lag0(e2,10)));	// compute HAC1 standard errors
		sumOmega9=e2'e2/(T-1);
		sumOmega10= (2/(T-1))*((10/11)*e2'(lag0(e1,1))+(9/11)*e2'(lag0(e1,2))+(8/11)*e2'(lag0(e1,3))+(7/11)*e2'(lag0(e1,4))+(6/11)*e2'(lag0(e1,5))+(5/11)*e2'(lag0(e1,6))+(4/11)*e2'(lag0(e1,7))+(3/11)*e2'(lag0(e1,8))+(2/11)*e2'(lag0(e1,9))+(1/11)*e2'(lag0(e1,10)));	// compute HAC1 standard errors
		

		//code for Omega21Hat
		sumOmega11=c'e1/(T-1);
		sumOmega13= (1/(T-1))*((10/11)*c'(lag0(e1,1))+(9/11)*c'(lag0(e1,2))+(8/11)*c'(lag0(e1,3))+(7/11)*c'(lag0(e1,4))+(6/11)*c'(lag0(e1,5))+(5/11)*c'(lag0(e1,6))+(4/11)*c'(lag0(e1,7))+(3/11)*c'(lag0(e1,8))+(2/11)*c'(lag0(e1,9))+(1/11)*c'(lag0(e1,10)));	// compute HAC1 standard errors
		sumOmega12= (1/(T-1))*((10/11)*e1'(lag0(c,1))+(9/11)*e1'(lag0(c,2))+(8/11)*e1'(lag0(c,3))+(7/11)*e1'(lag0(c,4))+(6/11)*e1'(lag0(c,5))+(5/11)*e1'(lag0(c,6))+(4/11)*e1'(lag0(c,7))+(3/11)*e1'(lag0(c,8))+(2/11)*e1'(lag0(c,9))+(1/11)*e1'(lag0(c,10)));	// compute HAC1 standard errors
		sumOmega14=c'e2/(T-1);
		sumOmega15= (1/(T-1))*((10/11)*e2'(lag0(c,1))+(9/11)*e2'(lag0(c,2))+(8/11)*e2'(lag0(c,3))+(7/11)*e2'(lag0(c,4))+(6/11)*e2'(lag0(c,5))+(5/11)*e2'(lag0(c,6))+(4/11)*e2'(lag0(c,7))+(3/11)*e2'(lag0(c,8))+(2/11)*e2'(lag0(c,9))+(1/11)*e2'(lag0(c,10)));	// compute HAC1 standard errors
		sumOmega16= (1/(T-1))*((10/11)*c'(lag0(e2,1))+(9/11)*c'(lag0(e2,2))+(8/11)*c'(lag0(e2,3))+(7/11)*c'(lag0(e2,4))+(6/11)*c'(lag0(e2,5))+(5/11)*c'(lag0(e2,6))+(4/11)*c'(lag0(e2,7))+(3/11)*c'(lag0(e2,8))+(2/11)*c'(lag0(e2,9))+(1/11)*c'(lag0(e2,10)));	// compute HAC1 standard errors
		
		//code for Gamma22Hat
		sumGamma11=sumOmega1+(sumOmega2/2);
		sumGamma12=sumOmega6+sumOmega5;
		sumGamma21=sumOmega6+sumOmega4;
		sumGamma22=sumOmega9+(sumOmega10/2);
									   		
		//code for Gamma21Hat
		sumGamma1=sumOmega11+sumOmega13;
		sumGamma2=sumOmega14+sumOmega16;

		//code for Omega22Hat again 
		Omega22Hat[0][0]=sumOmega1+sumOmega2; 
		Omega22Hat[0][1]=sumOmega3+sumOmega4+sumOmega5; 
		Omega22Hat[1][0]=sumOmega6+sumOmega7+sumOmega8; 
		Omega22Hat[1][1]=sumOmega9+sumOmega10; 

		//code for Omega21Hat again
		Omega21Hat[0][0]=sumOmega11+sumOmega12+sumOmega13; 
		Omega21Hat[1][0]=sumOmega14+sumOmega15+sumOmega16; 

		//code for Gamma22Hat again
		Gamma22Hat[0][0]=sumGamma11;
		Gamma22Hat[0][1]=sumGamma12;
		Gamma22Hat[1][0]=sumGamma21;
		Gamma22Hat[1][1]=sumGamma22;

		//code for Gamma21Hat again
		Gamma21Hat[0][0]=sumGamma1;
		Gamma21Hat[1][0]=sumGamma2;


		//code for Omega11Hat
		sumOmega17= c'c/(T-1);
		sumOmega18= (2/(T-1))*((10/11)*c'(lag0(c,1))+(9/11)*c'(lag0(c,2))+(8/11)*c'(lag0(c,3))+(7/11)*c'(lag0(c,4))+(6/11)*c'(lag0(c,5))+(5/11)*c'(lag0(c,6))+(4/11)*c'(lag0(c,7))+(3/11)*c'(lag0(c,8))+(2/11)*c'(lag0(c,9))+(1/11)*c'(lag0(c,10)));	// compute HAC1 standard errors
		
		//code for Omega11Hat again
		Omega11Hat=sumOmega17+sumOmega18;

		//code for Sigma
		SigmaHat[0][0]=sumOmega17;
		SigmaHat[0][1]=sumOmega11;
		SigmaHat[0][2]=sumOmega14;
		SigmaHat[1][0]=sumOmega11';
		SigmaHat[2][0]=sumOmega14';
		SigmaHat[1][1]=sumOmega1;
		SigmaHat[1][2]=sumOmega3;
		SigmaHat[2][1]=sumOmega6;
		SigmaHat[2][2]=sumOmega10;

		//code for Sigma
		Sigma22Hat=SigmaHat[1:2][1:2];
		Sigma22Hatinv=invert(Sigma22Hat);
		Sigma=SigmaHat[0][0]-SigmaHat[0][1:2]*Sigma22Hatinv*SigmaHat[0][1:2]';
		SumSigma |= Sigma;

		//Code for Omegabar
		Omegabar[0][0] += Omega11Hat;
		Omegabar[1:2][1:2] += Omega22Hat;
		Omegabar[0][1:2] += Omega21Hat';
		Omegabar[1:2][0] += Omega21Hat;

		println("Omegabar=",Omegabar);

		OmegabarPrime = Omegabar./N;
		OmegabarPrimeinv = invert(OmegabarPrime[1:2][1:2]);
		Omegabarsigma2 = OmegabarPrime[0][0]-OmegabarPrime[0][1:2]*OmegabarPrimeinv*OmegabarPrime[0][1:2]';
		println("OmegabarPrime[0][1:2]=",OmegabarPrime[0][1:2]);
		println("OmegabarPrime[1:2][1:2]=",OmegabarPrime[1:2][1:2]);
		println("OmegabarPrimeinv=",invert(OmegabarPrime[1:2][1:2]));
		println("Omegabarsigma2=",Omegabarsigma2);

		
}
}
}