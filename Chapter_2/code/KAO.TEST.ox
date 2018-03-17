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
		decl BUZZ,BUZZ1,DW,Fstat1,Fstat2,Fstat,amsval,DXX,R,Ra,Rb,R2,c1,PrimeGammaHat,mx,i,y,yHat,x1,x2,x3,X,b,OLSbPlus,Delta1,Delta2,tPlus,Delta3,Delta4,tPlusPlus,T,amxinv,c,e1,e2,rho,rhoHat,Omega22Hatinv,t,w,d,p,q;
		decl OLSbPlus1,Omega1,Omega2,Omega3,Omega4,Omegastar,Omega1inv,P1,P2,P11,dd,ZZ1,ZZ2,OLSbPlusPlus,amx1inv;
		decl XHat2starcol = zeros(0,3);
		decl yHat2starcol = zeros(0,1);
		
		
		println("FMOLS Consumption Function Estimates Using Income and Savings");

		decl XHat,XHatstar,XHat2star,OmegaPlus,yHatplus,yHat2star,Omega11HatPlusinv;
		decl GammaHatbar,PrimeGammaHatbar,OLSbPlusNumerator;
		decl SumOLSbPlusNumerator = zeros(1,3);

		
		// load data-matrix
		mx=loadmat("G:\\KAO.TESTDATA.in7");

	//initialising variables

		for(i=0;i<19;++i)
		{
		
		// set X,y,b parameters
		y = mx[0:][0+(4*i)];
		x1 = mx[0:][1+(4*i)];
		x2 = mx[0:][2+(4*i)];
		x3 = mx[0:][3+(4*i)];
		X = x1~x2~x3;
		T = 138;
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
		sumOmega2=(2/(T-1))*(0.8*(lag0(e1,1))'e1+0.6*(lag0(e1,2))'e1+0.4*(lag0(e1,3))'e1+0.2*(lag0(e1,4))'e1);
		sumOmega3=e1'e2/(T-1);
		sumOmega4=(1/(T-1))*(0.8*(lag0(e1,1))'e2+0.6*(lag0(e1,2))'e2+0.4*(lag0(e1,3))'e2+0.2*(lag0(e1,4))'e2);
		sumOmega5=(1/(T-1))*(0.8*(lag0(e2,1))'e1+0.6*(lag0(e2,2))'e1+0.4*(lag0(e2,3))'e1+0.2*(lag0(e2,4))'e1);
		sumOmega6=e2'e1/(T-1);
		sumOmega7=(1/(T-1))*(0.8*(lag0(e2,1))'e1+0.6*(lag0(e2,2))'e1+0.4*(lag0(e2,3))'e1+0.2*(lag0(e2,4))'e1);
		sumOmega8=(1/(T-1))*(0.8*(lag0(e1,1))'e2+0.6*(lag0(e1,2))'e2+0.4*(lag0(e1,3))'e2+0.2*(lag0(e1,4))'e2);
		sumOmega9=e2'e2/(T-1);
		sumOmega10=(2/(T-1))*(0.8*(lag0(e2,1))'e2+0.6*(lag0(e2,2))'e2+0.4*(lag0(e2,3))'e2+0.2*(lag0(e2,4))'e2);
		

		//code for Omega21Hat
		sumOmega11=c'e1/(T-1);
		sumOmega12=(1/(T-1))*(0.8*(lag0(c,1))'e1+0.6*(lag0(c,2))'e1+0.4*(lag0(c,3))'e1+0.2*(lag0(c,4))'e1);
		sumOmega13=(1/(T-1))*(0.8*(lag0(e1,1))'c+0.6*(lag0(e1,2))'c+0.4*(lag0(e1,3))'c+0.2*(lag0(e1,4))'c);
		sumOmega14=c'e2/(T-1);
		sumOmega15=(1/(T-1))*(0.8*(lag0(c,1))'e2+0.6*(lag0(c,2))'e2+0.4*(lag0(c,3))'e2+0.2*(lag0(c,4))'e2);
		sumOmega16=(1/(T-1))*(0.8*(lag0(e2,1))'c+0.6*(lag0(e2,2))'c+0.4*(lag0(e2,3))'c+0.2*(lag0(e2,4))'c);

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
		sumOmega18=(2/(T-1))*(0.8*(lag0(c,1))'c+0.6*(lag0(c,2))'c+0.4*(lag0(c,3))'c+0.2*(lag0(c,4))'c);

		//code for Omega11Hat again
		Omega11Hat=sumOmega17+sumOmega18;
		
		//code for FMOLS estimators

		Omega22Hatinv=invert(Omega22Hat);
		rho=Omega21Hat'Omega22Hatinv;
		rhoHat=rho';
		yHat=y-rho[0][0]*e1+rho[0][1]*e2;
		GammaHat=Gamma21Hat-Gamma22Hat*rhoHat;
		PrimeGammaHat=(0|GammaHat);
		OLSbPlus=(X'yHat-T*PrimeGammaHat)'*amxinv;
		Omega11HatPlus=Omega11Hat-(Omega21Hat'Omega22Hatinv)*Omega21Hat;
		Delta1=Omega11HatPlus*diagonal(amxinv);
		Delta2=sqrt(Delta1);
		tPlus=(OLSbPlus./Delta2); 
		println("FMOLS b=",OLSbPlus);
		println("FMOLS t=",tPlus);
		c1=y-X*OLSbPlus';
		Ra=c1'c1;
		Rb=y'y;
		R=Ra/Rb;
		R2=1-R;
		DW=(c-lag0(c,1))'(c-lag0(c,1))/Ra;
		Fstat1=R2*(T-3);
		Fstat2=(1-R2)*2;
		Fstat=Fstat1/Fstat2;
		eigensym(X'X,&amsval);
		yHat2starcol |= Omega11HatPlus;
		println("Omega11HatPlus",Omega11HatPlus);
		println("yHat2starcol",yHat2starcol);
}
}
}