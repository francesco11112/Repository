#include<oxstd.h>

main()	  
{
		decl FMOLSVAR = zeros(2,2);
		decl SumOmegaPlusNum = zeros(2,2);
		decl Omegabar = zeros(3,3);
		decl OmegabarPrime = zeros(3,3);
		decl SumOLSbPlusNum = zeros(1,2);
		decl Omega11HatPlusNum = zeros(1,1);
		decl yhat = zeros(0,1);
		decl Xhat = zeros(0,2);
		decl C2 = zeros(1,1);
		//initialising variables
		decl Gamma22Hat = zeros(2,2);	// enter code
		decl Gamma21Hat = zeros(2,1);
		decl Gamma = zeros(2,1);		// enter code
		decl GammaHat = zeros(2,1);
		decl Omega22Hat = zeros(2,2);	// enter code
		decl Omega21Hat = zeros(2,1);
		decl OmegaHatFei = zeros(5,2);
		decl GammaHatFei = zeros(5,2);
		decl Gamma12Hat = zeros(1,2);
		decl OmegaHatFi = zeros(5,5);
		decl OmegaHatDotFei = zeros(5,5);
		decl OmegaHatDotuei = zeros(1,1);
		decl GammaHatueiPlus = zeros(1,2);
		decl GammaHatFeiPlus = zeros(5,2);
		decl sumOmega1,sumOmega2,sumOmega3,sumOmega4,sumOmega5,sumOmega6,sumOmega7,sumOmega8,sumOmega9;
		decl sumOmega10,sumOmega11,sumOmega12,sumOmega13,sumOmega14,sumOmega15,sumOmega16,sumOmega17,sumOmega18,sumOmega19,sumOmega20;
		decl sumOmega21,sumOmega22,sumOmega23,sumOmega24,sumOmega25,sumOmega26,sumOmega27,sumOmega28,sumOmega29,sumOmega30;
		decl sumOmega31,sumOmega32,sumOmega33,sumOmega34,sumOmega35,sumOmega36,sumOmega37,sumOmega38,sumOmega39,sumOmega40;
		decl sumOmega41,sumOmega42,sumOmega43,sumOmega44,sumOmega45,sumOmega46,sumOmega47,sumOmega48,sumOmega49;
						
		decl sumGamma1,sumGamma2,sumGamma3,sumGamma4,sumGamma11,sumGamma12,sumGamma21,sumGamma22,Omega11Hat,Omega11HatPlus,pval1,pval2,t3,t4;
		decl FMOLSVAR1,FMOLSVAR2,FMOLSVART,IC,DW,Fstat1,Fstat2,Fstat,amsval,DXX,R,Ra,Rb,R2,c1,c2,c3,PrimeGammaHat,mx,i,y,yHat,x1,x2,x3,X,b,OLSbPlus,OLSbPlusPlus,OLSbPlus1,Delta1, Delta2,tPlus,T,amxinv,c,e1,e2,rho,rhoHat,Omega22Hatinv,t,w,d,p,q;

		println("FMOLS Consumption Function Estimates Using Income and L.A.");
		decl XA,xa,xb,ya,amsval2,amsvec2,F,Lambda,U,Zstar,dd,amx1inv,YHAT,rhoHat2,X2,y2,b2,ba,F1,F2,F3,F4,F5,e,amx2inv,amx3inv,X1;
		decl eigen = zeros(39,39);
		decl Z = zeros(39,0);
													// load data-matrix
		mx=loadmat("G:\\CHAPTER4-LA2.in7");	  // load data-matrix

	//initialising variables

		for(i=0;i<20;++i)
		{
		
										// set X,y,b parameters
		y = mx[0:][0+(4*i)];			  // equation-by-equation estimated residuals
		x1 = mx[0:][1+(4*i)];
		x2 = mx[0:][2+(4*i)];
		x3 = mx[0:][3+(4*i)];
		X1 = x1~x2~x3;					  // equation-by-equation estimated residuals
		xa = (x2-meanc(x2));
		xb = (x3-meanc(x3));
		ya = (y-meanc(y));	 
		XA=xa~xb;
		olsc(ya,XA,&ba,&amxinv);	 // OLS estimation
						   		// OLS estimation
								// OLS estimation		
			   
		
		olsc(y,X1,&b,&amx3inv);							   
		println("RESIDUAL Estimates of country regression ",i);
		U=y-X1*b;
		
		e = y-X1*b;				 // collect residuals
		Z ~= e;
		Zstar = Z*Z';
		}

		eigensym(Zstar,&amsval2,&amsvec2);	// estimation of principal components
		eigen = amsvec2;					// estimation of principal components
		F = sqrt(39)*eigen[0:][0:4];	   // estimation of factors
		Lambda =(F'Z)/39;				   // estimation of factor loadings
		
		
		   // load data-matrix
											   // load data-matrix
	//initialising variables

		for(i=0;i<20;++i)
		{
	
		c = Z[0:][0+i]-(Lambda[0:][0+i]')*F[0+i][0:]';	   // new residuals 
		C2 +=(c'c);
		
		// set X,y,b parameters
		y2 = mx[0:][0+(4*i)];
		x1 = mx[0:][1+(4*i)];
		x2 = mx[0:][2+(4*i)];
		x3 = mx[0:][3+(4*i)];
		X2 = x1~x2~x3;
		T = 39;
		olsc(y2,X2,&b2,&amx2inv);	   // OLS estimation
		println("Estimates of country regression ",i);
		println("OLS b=",b2);
		c2=y2-X2*b2;
		d=c2'c2/(T-3);
		w=sqrt(d)*sqrt(amx2inv);
		p=diagonal(w);
		q=p';
		t=b2./q;
		Ra=c2'c2;
		Rb=y2'y2;
		R=Ra/Rb;
		R2=1-R;
		DW=(c2-lag0(c2,1))'(c2-lag0(c2,1))/Ra;
		Fstat1=R2*(T-3);
		Fstat2=(1-R2)*2;
		Fstat=Fstat1/Fstat2;
		println("R2=",R2);
		println("D.W.=",DW);

		println("t-values=",t);
		e1=x2-lag0(x2,1);
		e2=x3-lag0(x3,1);
		F1=F[0:][0];
		F2=F[0:][1];
		F3=F[0:][2];
		F4=F[0:][3];
		F5=F[0:][4];


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
		sumOmega10=(2/(T-1))*(0.8*(lag0(e1,1))'e2+0.6*(lag0(e1,2))'e2+0.4*(lag0(e1,3))'e2+0.2*(lag0(e1,4))'e2);

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

		//code for OmegaHatFei

		sumOmega20=	F1'e1/(T-1);
		sumOmega21=	(1/(T-1))*(0.8*(lag0(F1,1))'e1+0.6*(lag0(F1,2))'e1+0.4*(lag0(F1,3))'e1+0.2*(lag0(F1,4))'e1);
		sumOmega22= (1/(T-1))*(0.8*(lag0(e1,1))'F1+0.6*(lag0(e1,2))'F1+0.4*(lag0(e1,3))'F1+0.2*(lag0(e1,4))'F1);

		sumOmega23=	F2'e1/(T-1);
		sumOmega24=	(1/(T-1))*(0.8*(lag0(F2,1))'e1+0.6*(lag0(F2,2))'e1+0.4*(lag0(F2,3))'e1+0.2*(lag0(F2,4))'e1);
		sumOmega25= (1/(T-1))*(0.8*(lag0(e1,1))'F2+0.6*(lag0(e1,2))'F2+0.4*(lag0(e1,3))'F2+0.2*(lag0(e1,4))'F2);

		sumOmega26=	F3'e1/(T-1);
		sumOmega27=	(1/(T-1))*(0.8*(lag0(F3,1))'e1+0.6*(lag0(F3,2))'e1+0.4*(lag0(F3,3))'e1+0.2*(lag0(F3,4))'e1);
		sumOmega28= (1/(T-1))*(0.8*(lag0(e1,1))'F3+0.6*(lag0(e1,2))'F3+0.4*(lag0(e1,3))'F3+0.2*(lag0(e1,4))'F3);

		sumOmega29=	F4'e1/(T-1);
		sumOmega30=	(1/(T-1))*(0.8*(lag0(F4,1))'e1+0.6*(lag0(F4,2))'e1+0.4*(lag0(F4,3))'e1+0.2*(lag0(F4,4))'e1);
		sumOmega31= (1/(T-1))*(0.8*(lag0(e1,1))'F4+0.6*(lag0(e1,2))'F4+0.4*(lag0(e1,3))'F4+0.2*(lag0(e1,4))'F4);
							   								
		sumOmega32=	F5'e1/(T-1);
		sumOmega33=	(1/(T-1))*(0.8*(lag0(F5,1))'e1+0.6*(lag0(F5,2))'e1+0.4*(lag0(F5,3))'e1+0.2*(lag0(F5,4))'e1);
		sumOmega34= (1/(T-1))*(0.8*(lag0(e1,1))'F5+0.6*(lag0(e1,2))'F5+0.4*(lag0(e1,3))'F5+0.2*(lag0(e1,4))'F5);

		sumOmega35=	F1'e2/(T-1);
		sumOmega36=	(1/(T-1))*(0.8*(lag0(F1,1))'e2+0.6*(lag0(F1,2))'e2+0.4*(lag0(F1,3))'e2+0.2*(lag0(F1,4))'e2);
		sumOmega37= (1/(T-1))*(0.8*(lag0(e2,1))'F1+0.6*(lag0(e2,2))'F1+0.4*(lag0(e2,3))'F1+0.2*(lag0(e2,4))'F1);

		sumOmega38=	F2'e2/(T-1);
		sumOmega39=	(1/(T-1))*(0.8*(lag0(F2,1))'e2+0.6*(lag0(F2,2))'e2+0.4*(lag0(F2,3))'e2+0.2*(lag0(F2,4))'e2);
		sumOmega40= (1/(T-1))*(0.8*(lag0(e2,1))'F2+0.6*(lag0(e2,2))'F2+0.4*(lag0(e2,3))'F2+0.2*(lag0(e2,4))'F2);

		sumOmega41=	F3'e2/(T-1);
		sumOmega42=	(1/(T-1))*(0.8*(lag0(F3,1))'e2+0.6*(lag0(F3,2))'e2+0.4*(lag0(F3,3))'e2+0.2*(lag0(F3,4))'e2);
		sumOmega43= (1/(T-1))*(0.8*(lag0(e2,1))'F3+0.6*(lag0(e2,2))'F3+0.4*(lag0(e2,3))'F3+0.2*(lag0(e2,4))'F3);

		sumOmega44=	F4'e2/(T-1);
		sumOmega45=	(1/(T-1))*(0.8*(lag0(F4,1))'e2+0.6*(lag0(F4,2))'e2+0.4*(lag0(F4,3))'e2+0.2*(lag0(F4,4))'e2);
		sumOmega46= (1/(T-1))*(0.8*(lag0(e2,1))'F4+0.6*(lag0(e2,2))'F4+0.4*(lag0(e2,3))'F4+0.2*(lag0(e2,4))'F4);
							   								
		sumOmega47=	F5'e2/(T-1);
		sumOmega48=	(1/(T-1))*(0.8*(lag0(F5,1))'e2+0.6*(lag0(F5,2))'e2+0.4*(lag0(F5,3))'e2+0.2*(lag0(F5,4))'e2);
		sumOmega49= (1/(T-1))*(0.8*(lag0(e2,1))'F5+0.6*(lag0(e2,2))'F5+0.4*(lag0(e2,3))'F5+0.2*(lag0(e2,4))'F5);
		
		//code for OmegaHatFei again

		OmegaHatFei[0][0]=sumOmega20+sumOmega21+sumOmega22; 
		OmegaHatFei[1][0]=sumOmega23+sumOmega24+sumOmega25; 
		OmegaHatFei[2][0]=sumOmega26+sumOmega27+sumOmega28; 
		OmegaHatFei[3][0]=sumOmega29+sumOmega30+sumOmega31;
		OmegaHatFei[4][0]=sumOmega32+sumOmega33+sumOmega34;

		OmegaHatFei[0][1]=sumOmega35+sumOmega36+sumOmega37; 
		OmegaHatFei[1][1]=sumOmega38+sumOmega39+sumOmega40; 
		OmegaHatFei[2][1]=sumOmega41+sumOmega42+sumOmega43; 
		OmegaHatFei[3][1]=sumOmega44+sumOmega45+sumOmega46;
		OmegaHatFei[4][1]=sumOmega47+sumOmega48+sumOmega49;
		
		//code for GammaHatFei
		GammaHatFei[0][0]=sumOmega20+sumOmega21; 
		GammaHatFei[1][0]=sumOmega23+sumOmega24; 
		GammaHatFei[2][0]=sumOmega26+sumOmega27; 
		GammaHatFei[3][0]=sumOmega29+sumOmega30;
		GammaHatFei[4][0]=sumOmega32+sumOmega33;

		GammaHatFei[0][1]=sumOmega35+sumOmega36; 
		GammaHatFei[1][1]=sumOmega38+sumOmega39; 
		GammaHatFei[2][1]=sumOmega41+sumOmega42; 
		GammaHatFei[3][1]=sumOmega44+sumOmega45;
		GammaHatFei[4][1]=sumOmega47+sumOmega48;

		//code for Gamma12Hat
		sumGamma3=sumOmega11+sumOmega12;
		sumGamma4=sumOmega14+sumOmega15;

		//code for Gamma12Hat again
		Gamma12Hat[0][0]=sumGamma3;
		Gamma12Hat[0][1]=sumGamma4;
		
		//code for FMOLS estimators

		
		Omega22Hatinv=invert(Omega22Hat);
		rho=Omega21Hat'Omega22Hatinv;
		rhoHat=rho';
		rhoHat2= ((Lambda[0:][0+i]')*OmegaHatFei+ Omega21Hat')*Omega22Hatinv; 
		GammaHatueiPlus= Gamma12Hat-rho*Gamma22Hat;
		GammaHatFeiPlus= GammaHatFei-OmegaHatFei*Omega22Hatinv*Gamma22Hat; 

		
		yHat=y-rho[0][0]*e1+rho[0][1]*e2;
		YHAT =y-rhoHat2[0][0]*e1+rhoHat2[0][1]*e2;  
	
		GammaHat=Gamma21Hat-Gamma22Hat*rhoHat;
		PrimeGammaHat=((Lambda[0:][0+i]')*GammaHatFeiPlus+ GammaHatueiPlus);

		OLSbPlus=(YHAT'XA-T*PrimeGammaHat)*amxinv;
		
		
		Omega11HatPlus=Omega11Hat-(Omega21Hat'Omega22Hatinv)*Omega21Hat;
		
		
		
		Delta1=Omega11HatPlus*diagonal(amxinv);
		Delta2=sqrt(Delta1);
		tPlus=(OLSbPlus./Delta2);
		t3 = tPlus.^2;             
		t4 = sqrt(t3);         
		pval1 = 2*tailt(t4,36);													  															
		println("FMOLS b=",OLSbPlus);
		println("FMOLS t=",tPlus);
		println("FMOLS pval=",pval1);
		c1=y-XA*OLSbPlus';
		Ra=c1'c1;
		Rb=y'y;
		R=Ra/Rb;
		R2=1-R;
		DW=(c1-lag0(c1,1))'(c1-lag0(c1,1))/Ra;
		Fstat1=R2*(T-3);
		Fstat2=(1-R2)*2;
		Fstat=Fstat1/Fstat2;
		pval2 = tailf(Fstat,2,T-3);
		println("R2=",R2);
		println("D.W.=",DW);
		println("F-stat pval=",pval2);

		
		Xhat |= XA;
		yhat |= ya;
		OLSbPlus1=(YHAT'XA-T*PrimeGammaHat);
		SumOLSbPlusNum += OLSbPlus1;

		Omegabar[0][0] += Omega11Hat;
		Omegabar[1:2][1:2] += Omega22Hat;
		Omegabar[0][1:2] += Omega21Hat';
		Omegabar[1:2][0] += Omega21Hat;

		OmegaHatDotFei = OmegaHatFi-OmegaHatFei*Omega22Hatinv*(OmegaHatFei');
		OmegaHatDotuei = Omega11Hat-(Omega21Hat'Omega22Hatinv)*Omega21Hat;
		SumOmegaPlusNum	+= (((Lambda[0:][0+i]')*OmegaHatDotFei*Lambda[0:][0+i])*Omega22Hat + OmegaHatDotuei*Omega22Hat);
		
		}

		IC =log(C2/780)+5*(59/780)*log(780/59);
		olsc(yhat,Xhat,&dd,&amx1inv);
		OLSbPlusPlus =(SumOLSbPlusNum)*amx1inv;
		

		println("Omegabar=",Omegabar);
		OmegabarPrime = Omegabar./20;
		println("SumOmegaPlusNum=",SumOmegaPlusNum);
		println("OmegabarPrime[0][1:2]=",OmegabarPrime[0][1:2]);
		println("OmegabarPrime[1:2][1:2]=",OmegabarPrime[1:2][1:2]);
		println("OmegabarPrimeinv=",invert(OmegabarPrime[1:2][1:2]));

		FMOLSVAR = invert(OmegabarPrime[1:2][1:2])*(SumOmegaPlusNum./20)*invert(OmegabarPrime[1:2][1:2]);
		FMOLSVAR1=diagonal(6*FMOLSVAR);
		FMOLSVAR2=sqrt(sqrt(FMOLSVAR1.^2));
		FMOLSVART=OLSbPlusPlus./FMOLSVAR2;	
		println("FMOLSVAR=",6*FMOLSVAR,"IC=",IC);
 		println("POOLED FMOLS b2=",OLSbPlusPlus,"POOLED FMOLS t2=",174.41*FMOLSVART);

		c3=yhat-Xhat*OLSbPlusPlus';
		Ra=c3'c3;
		Rb=yhat'yhat;
		R=Ra/Rb;
		R2=1-R;
		DW=(c3-lag0(c3,1))'(c3-lag0(c3,1))/Ra;
		Fstat1=R2*20*(T-3);
		Fstat2=(1-R2)*2;
		Fstat=Fstat1/Fstat2;
		pval2 = tailf(Fstat,2,20*(T-3));
		println("FMOLS R2=",R2);
		println("FMOLS D.W.=",DW);
		println("FMOLS F-stat=",Fstat);
		println("FMOLS F-stat pval=",pval2);

}

