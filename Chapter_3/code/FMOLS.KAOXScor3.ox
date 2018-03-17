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
		decl OmegaHatFei = zeros(7,2);
		decl OmegaHatFi = zeros(7,7);
		decl OmegaHatDotFei = zeros(7,7);
		decl OmegaHatDotuei = zeros(1,1);
		decl GammaHatFei = zeros(7,2);
		decl Gamma12Hat = zeros(1,2);
		decl GammaHatueiPlus = zeros(1,2);
		decl GammaHatFeiPlus = zeros(7,2);
		decl sumOmega1,sumOmega2,sumOmega3,sumOmega4,sumOmega5,sumOmega6,sumOmega7,sumOmega8,sumOmega9,sumOmega10;
		decl sumOmega11,sumOmega12,sumOmega13,sumOmega14,sumOmega15,sumOmega16,sumOmega17,sumOmega18,sumOmega19,sumOmega20;
		decl sumOmega21,sumOmega22,sumOmega23,sumOmega24,sumOmega25,sumOmega26,sumOmega27,sumOmega28,sumOmega29,sumOmega30;
		decl sumOmega31,sumOmega32,sumOmega33,sumOmega34,sumOmega35,sumOmega36,sumOmega37,sumOmega38,sumOmega39,sumOmega40;
		decl sumOmega41,sumOmega42,sumOmega43,sumOmega44,sumOmega45,sumOmega46,sumOmega47,sumOmega48,sumOmega49,sumOmega50;
		decl sumOmega51,sumOmega52,sumOmega53,sumOmega54,sumOmega55,sumOmega56,sumOmega57,sumOmega58,sumOmega59,sumOmega60;
		decl sumOmega61,sumOmega62,sumOmega63,sumOmega64,sumOmega65,sumOmega66,sumOmega67,sumOmega68,sumOmega69,sumOmega70;
		decl sumOmega71,sumOmega72,sumOmega73,sumOmega74,sumOmega75,sumOmega76,sumOmega77,sumOmega78,sumOmega79,sumOmega80;
		decl sumOmega81,sumOmega82,sumOmega83,sumOmega84,sumOmega85,sumOmega86,sumOmega87,sumOmega88,sumOmega89,sumOmega90;
		decl sumOmega91,sumOmega92,sumOmega93,sumOmega94,sumOmega95,sumOmega96,sumOmega97,sumOmega98,sumOmega99,sumOmega100;
		decl sumOmega101,sumOmega102,sumOmega103,sumOmega104,sumOmega105,sumOmega106,sumOmega107,sumOmega108,sumOmega109;
		decl sumOmega110,sumOmega111,sumOmega112,sumOmega113,sumOmega114,sumOmega115,sumOmega116,sumOmega117,sumOmega118,sumOmega119;
		decl sumOmega120,sumOmega121,sumOmega122,sumOmega123,sumOmega124,sumOmega125,sumOmega126,sumOmega127,sumOmega128,sumOmega129;
		decl sumOmega130,sumOmega131,sumOmega132,sumOmega133,sumOmega134,sumOmega135,sumOmega136,sumOmega137,sumOmega138,sumOmega139;
		

		
		decl sumGamma1,sumGamma2,sumGamma3,sumGamma4,sumGamma11,sumGamma12,sumGamma21,sumGamma22,Omega11Hat,Omega11HatPlus,pval1,pval2,t3,t4;
		decl FMOLSVAR1,FMOLSVAR2,FMOLSVART,IC,DW,Fstat1,Fstat2,Fstat,amsval,DXX,R,Ra,Rb,R2,c1,c2,c3,PrimeGammaHat,mx,i,y,yHat,x1,x2,x3,X,b,OLSbPlus,OLSbPlus1,OLSbPlusPlus,Delta1, Delta2,tPlus,T,amxinv,c,e1,e2,rho,rhoHat,Omega22Hatinv,t,w,d,p,q;

		println("FMOLS Consumption Function Estimates Using Income and LA");
		decl XA,xa,xb,ya,amsval2,amsvec2,F,Lambda,U,Zstar,YHAT,rhoHat2,X2,y2,b2,ba,F1,F2,F3,F4,F5,F6,F7,e,amx2inv,dd,amx1inv,amx3inv,X1;
		decl eigen = zeros(39,39);
		decl Z = zeros(39,0);
		// load data-matrix
		mx=loadmat("G:\\CHAPTER4-LA2.in7");

	//initialising variables

		for(i=0;i<20;++i)
		{
		
		// set X,y,b parameters
		y = mx[0:][0+(4*i)];
		x1 = mx[0:][1+(4*i)];
		x2 = mx[0:][2+(4*i)];
		x3 = mx[0:][3+(4*i)];
		X1 = x1~x2~x3;
		xa = (x2-meanc(x2));
		xb = (x3-meanc(x3));
		ya = (y-meanc(y));	 // load data-matrix
		XA=xa~xb;
		olsc(ya,XA,&ba,&amxinv);
						   // OLS estimation
		
		olsc(y,X1,&b,&amx3inv);	   // OLS estimation
		
									   // OLS estimation
		println("RESIDUAL Estimates of country regression ",i);
		U=y-X1*b;
		
		e = y-X1*b;
		Z ~= e;
		Zstar = Z*Z';
		}

		eigensym(Zstar,&amsval2,&amsvec2);
		eigen = amsvec2;
		F = sqrt(39)*eigen[0:][0:6];
		Lambda =(F'Z)/39;
		println("Lambda rows=",rows(Lambda),"Lambda cols=",columns(Lambda));

		println("mineigen=",(amsval2[38]),"maxeigen=",(amsval2[0]),"ratioeigen=",(amsval2[0])/(amsval2[38]));
		println("sorted-eigenvalues(CN)=",sqrt(sqrt(amsval2[0]^2)/sqrt(amsval2[38]^2)));
		
		
		

	//initialising variables

		for(i=0;i<20;++i)
		{
	
		c = Z[0:][0+i]-(Lambda[0:][0+i]')*F[0+i][0:]';
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
		Rb=y'y;
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
		F6=F[0:][5];
		F7=F[0:][6];


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

		sumOmega35=	F6'e1/(T-1);
		sumOmega36=	(1/(T-1))*(0.8*(lag0(F6,1))'e1+0.6*(lag0(F6,2))'e1+0.4*(lag0(F6,3))'e1+0.2*(lag0(F6,4))'e1);
		sumOmega37= (1/(T-1))*(0.8*(lag0(e1,1))'F6+0.6*(lag0(e1,2))'F6+0.4*(lag0(e1,3))'F6+0.2*(lag0(e1,4))'F6);

		sumOmega38=	F7'e1/(T-1);
		sumOmega39=	(1/(T-1))*(0.8*(lag0(F7,1))'e1+0.6*(lag0(F7,2))'e1+0.4*(lag0(F7,3))'e1+0.2*(lag0(F7,4))'e1);
		sumOmega40= (1/(T-1))*(0.8*(lag0(e1,1))'F7+0.6*(lag0(e1,2))'F7+0.4*(lag0(e1,3))'F7+0.2*(lag0(e1,4))'F7);

		sumOmega41=	F1'e2/(T-1);
		sumOmega42=	(1/(T-1))*(0.8*(lag0(F1,1))'e2+0.6*(lag0(F1,2))'e2+0.4*(lag0(F1,3))'e2+0.2*(lag0(F1,4))'e2);
		sumOmega43= (1/(T-1))*(0.8*(lag0(e2,1))'F1+0.6*(lag0(e2,2))'F1+0.4*(lag0(e2,3))'F1+0.2*(lag0(e2,4))'F1);

		sumOmega44=	F2'e2/(T-1);
		sumOmega45=	(1/(T-1))*(0.8*(lag0(F2,1))'e2+0.6*(lag0(F2,2))'e2+0.4*(lag0(F2,3))'e2+0.2*(lag0(F2,4))'e2);
		sumOmega46= (1/(T-1))*(0.8*(lag0(e2,1))'F2+0.6*(lag0(e2,2))'F2+0.4*(lag0(e2,3))'F2+0.2*(lag0(e2,4))'F2);

		sumOmega47=	F3'e2/(T-1);
		sumOmega48=	(1/(T-1))*(0.8*(lag0(F3,1))'e2+0.6*(lag0(F3,2))'e2+0.4*(lag0(F3,3))'e2+0.2*(lag0(F3,4))'e2);
		sumOmega49= (1/(T-1))*(0.8*(lag0(e2,1))'F3+0.6*(lag0(e2,2))'F3+0.4*(lag0(e2,3))'F3+0.2*(lag0(e2,4))'F3);

		sumOmega50=	F4'e2/(T-1);
		sumOmega51=	(1/(T-1))*(0.8*(lag0(F4,1))'e2+0.6*(lag0(F4,2))'e2+0.4*(lag0(F4,3))'e2+0.2*(lag0(F4,4))'e2);
		sumOmega52= (1/(T-1))*(0.8*(lag0(e2,1))'F4+0.6*(lag0(e2,2))'F4+0.4*(lag0(e2,3))'F4+0.2*(lag0(e2,4))'F4);
							   								
		sumOmega53=	F5'e2/(T-1);
		sumOmega54=	(1/(T-1))*(0.8*(lag0(F5,1))'e2+0.6*(lag0(F5,2))'e2+0.4*(lag0(F5,3))'e2+0.2*(lag0(F5,4))'e2);
		sumOmega55= (1/(T-1))*(0.8*(lag0(e2,1))'F5+0.6*(lag0(e2,2))'F5+0.4*(lag0(e2,3))'F5+0.2*(lag0(e2,4))'F5);

		sumOmega56=	F6'e2/(T-1);
		sumOmega57=	(1/(T-1))*(0.8*(lag0(F6,1))'e2+0.6*(lag0(F6,2))'e2+0.4*(lag0(F6,3))'e2+0.2*(lag0(F6,4))'e2);
		sumOmega58= (1/(T-1))*(0.8*(lag0(e2,1))'F6+0.6*(lag0(e2,2))'F6+0.4*(lag0(e2,3))'F6+0.2*(lag0(e2,4))'F6);

		sumOmega59=	F7'e2/(T-1);
		sumOmega60=	(1/(T-1))*(0.8*(lag0(F7,1))'e2+0.6*(lag0(F7,2))'e2+0.4*(lag0(F7,3))'e2+0.2*(lag0(F7,4))'e2);
		sumOmega61= (1/(T-1))*(0.8*(lag0(e2,1))'F7+0.6*(lag0(e2,2))'F7+0.4*(lag0(e2,3))'F7+0.2*(lag0(e2,4))'F7);





		// code for OmegaHatFi

		sumOmega62=	F1'F1/(T-1);
		sumOmega63=	(2/(T-1))*(0.8*(lag0(F1,1))'F1+0.6*(lag0(F1,2))'F1+0.4*(lag0(F1,3))'F1+0.2*(lag0(F1,4))'F1);
		
		sumOmega64=	F2'F1/(T-1);
		sumOmega65=	(1/(T-1))*(0.8*(lag0(F2,1))'F1+0.6*(lag0(F2,2))'F1+0.4*(lag0(F2,3))'F1+0.2*(lag0(F2,4))'F1);
		sumOmega66= (1/(T-1))*(0.8*(lag0(F1,1))'F2+0.6*(lag0(F1,2))'F2+0.4*(lag0(F1,3))'F2+0.2*(lag0(F1,4))'F2);

		sumOmega67=	F3'F1/(T-1);
		sumOmega68=	(1/(T-1))*(0.8*(lag0(F3,1))'F1+0.6*(lag0(F3,2))'F1+0.4*(lag0(F3,3))'F1+0.2*(lag0(F3,4))'F1);
		sumOmega69= (1/(T-1))*(0.8*(lag0(F1,1))'F3+0.6*(lag0(F1,2))'F3+0.4*(lag0(F1,3))'F3+0.2*(lag0(F1,4))'F3);

		sumOmega70=	F4'F1/(T-1);
		sumOmega71=	(1/(T-1))*(0.8*(lag0(F4,1))'F1+0.6*(lag0(F4,2))'F1+0.4*(lag0(F4,3))'F1+0.2*(lag0(F4,4))'F1);
		sumOmega72= (1/(T-1))*(0.8*(lag0(F1,1))'F4+0.6*(lag0(F1,2))'F4+0.4*(lag0(F1,3))'F4+0.2*(lag0(F1,4))'F4);
							   								
		sumOmega73=	F5'F1/(T-1);
		sumOmega74=	(1/(T-1))*(0.8*(lag0(F5,1))'F1+0.6*(lag0(F5,2))'F1+0.4*(lag0(F5,3))'F1+0.2*(lag0(F5,4))'F1);
		sumOmega75= (1/(T-1))*(0.8*(lag0(F1,1))'F5+0.6*(lag0(F1,2))'F5+0.4*(lag0(F1,3))'F5+0.2*(lag0(F1,4))'F5);

		sumOmega76=	F6'F1/(T-1);
		sumOmega77=	(1/(T-1))*(0.8*(lag0(F6,1))'F1+0.6*(lag0(F6,2))'F1+0.4*(lag0(F6,3))'F1+0.2*(lag0(F6,4))'F1);
		sumOmega78= (1/(T-1))*(0.8*(lag0(F1,1))'F6+0.6*(lag0(F1,2))'F6+0.4*(lag0(F1,3))'F6+0.2*(lag0(F1,4))'F6);

		sumOmega79=	F7'F1/(T-1);
		sumOmega80=	(1/(T-1))*(0.8*(lag0(F7,1))'F1+0.6*(lag0(F7,2))'F1+0.4*(lag0(F7,3))'F1+0.2*(lag0(F7,4))'F1);
		sumOmega81= (1/(T-1))*(0.8*(lag0(F1,1))'F7+0.6*(lag0(F1,2))'F7+0.4*(lag0(F1,3))'F7+0.2*(lag0(F1,4))'F7);

		sumOmega82=	F2'F2/(T-1);
		sumOmega83=	(2/(T-1))*(0.8*(lag0(F2,1))'F2+0.6*(lag0(F2,2))'F2+0.4*(lag0(F2,3))'F2+0.2*(lag0(F2,4))'F2);
		
		sumOmega84=	F3'F2/(T-1);
		sumOmega85=	(1/(T-1))*(0.8*(lag0(F3,1))'F2+0.6*(lag0(F3,2))'F2+0.4*(lag0(F3,3))'F2+0.2*(lag0(F3,4))'F2);
		sumOmega86= (1/(T-1))*(0.8*(lag0(F2,1))'F3+0.6*(lag0(F2,2))'F3+0.4*(lag0(F2,3))'F3+0.2*(lag0(F2,4))'F3);

		sumOmega87=	F4'F2/(T-1);
		sumOmega88=	(1/(T-1))*(0.8*(lag0(F4,1))'F2+0.6*(lag0(F4,2))'F2+0.4*(lag0(F4,3))'F2+0.2*(lag0(F4,4))'F2);
		sumOmega89= (1/(T-1))*(0.8*(lag0(F2,1))'F4+0.6*(lag0(F2,2))'F4+0.4*(lag0(F2,3))'F4+0.2*(lag0(F2,4))'F4);
							   								
		sumOmega90=	F5'F2/(T-1);
		sumOmega91=	(1/(T-1))*(0.8*(lag0(F5,1))'F2+0.6*(lag0(F5,2))'F2+0.4*(lag0(F5,3))'F2+0.2*(lag0(F5,4))'F2);
		sumOmega92= (1/(T-1))*(0.8*(lag0(F2,1))'F5+0.6*(lag0(F2,2))'F5+0.4*(lag0(F2,3))'F5+0.2*(lag0(F2,4))'F5);

		sumOmega93=	F6'F2/(T-1);
		sumOmega94=	(1/(T-1))*(0.8*(lag0(F6,1))'F2+0.6*(lag0(F6,2))'F2+0.4*(lag0(F6,3))'F2+0.2*(lag0(F6,4))'F2);
		sumOmega95= (1/(T-1))*(0.8*(lag0(F2,1))'F6+0.6*(lag0(F2,2))'F6+0.4*(lag0(F2,3))'F6+0.2*(lag0(F2,4))'F6);

		sumOmega96=	F7'F2/(T-1);
		sumOmega97=	(1/(T-1))*(0.8*(lag0(F7,1))'F2+0.6*(lag0(F7,2))'F2+0.4*(lag0(F7,3))'F2+0.2*(lag0(F7,4))'F2);
		sumOmega98= (1/(T-1))*(0.8*(lag0(F2,1))'F7+0.6*(lag0(F2,2))'F7+0.4*(lag0(F2,3))'F7+0.2*(lag0(F2,4))'F7);

		sumOmega99=	F3'F3/(T-1);
		sumOmega100= (2/(T-1))*(0.8*(lag0(F3,1))'F3+0.6*(lag0(F3,2))'F3+0.4*(lag0(F3,3))'F3+0.2*(lag0(F3,4))'F3);

		sumOmega101= F4'F3/(T-1);
		sumOmega102= (1/(T-1))*(0.8*(lag0(F4,1))'F3+0.6*(lag0(F4,2))'F3+0.4*(lag0(F4,3))'F3+0.2*(lag0(F4,4))'F3);
		sumOmega103= (1/(T-1))*(0.8*(lag0(F3,1))'F4+0.6*(lag0(F3,2))'F4+0.4*(lag0(F3,3))'F4+0.2*(lag0(F3,4))'F4);
							   								
		sumOmega104= F5'F3/(T-1);
		sumOmega105= (1/(T-1))*(0.8*(lag0(F5,1))'F3+0.6*(lag0(F5,2))'F3+0.4*(lag0(F5,3))'F3+0.2*(lag0(F5,4))'F3);
		sumOmega106= (1/(T-1))*(0.8*(lag0(F3,1))'F5+0.6*(lag0(F3,2))'F5+0.4*(lag0(F3,3))'F5+0.2*(lag0(F3,4))'F5);

		sumOmega107= F6'F3/(T-1);
		sumOmega108= (1/(T-1))*(0.8*(lag0(F6,1))'F3+0.6*(lag0(F6,2))'F3+0.4*(lag0(F6,3))'F3+0.2*(lag0(F6,4))'F3);
		sumOmega109= (1/(T-1))*(0.8*(lag0(F3,1))'F6+0.6*(lag0(F3,2))'F6+0.4*(lag0(F3,3))'F6+0.2*(lag0(F3,4))'F6);

		sumOmega110= F7'F3/(T-1);
		sumOmega111= (1/(T-1))*(0.8*(lag0(F7,1))'F3+0.6*(lag0(F7,2))'F3+0.4*(lag0(F7,3))'F3+0.2*(lag0(F7,4))'F3);
		sumOmega112= (1/(T-1))*(0.8*(lag0(F3,1))'F7+0.6*(lag0(F3,2))'F7+0.4*(lag0(F3,3))'F7+0.2*(lag0(F3,4))'F7);

		sumOmega113= F4'F4/(T-1);
		sumOmega114= (2/(T-1))*(0.8*(lag0(F4,1))'F4+0.6*(lag0(F4,2))'F4+0.4*(lag0(F4,3))'F4+0.2*(lag0(F4,4))'F4);

		sumOmega115= F5'F4/(T-1);
		sumOmega116= (1/(T-1))*(0.8*(lag0(F5,1))'F4+0.6*(lag0(F5,2))'F4+0.4*(lag0(F5,3))'F4+0.2*(lag0(F5,4))'F4);
		sumOmega117= (1/(T-1))*(0.8*(lag0(F4,1))'F5+0.6*(lag0(F4,2))'F5+0.4*(lag0(F4,3))'F5+0.2*(lag0(F4,4))'F5);

		sumOmega118= F6'F4/(T-1);
		sumOmega119= (1/(T-1))*(0.8*(lag0(F6,1))'F4+0.6*(lag0(F6,2))'F4+0.4*(lag0(F6,3))'F4+0.2*(lag0(F6,4))'F4);
		sumOmega120= (1/(T-1))*(0.8*(lag0(F4,1))'F6+0.6*(lag0(F4,2))'F6+0.4*(lag0(F4,3))'F6+0.2*(lag0(F4,4))'F6);

		sumOmega121= F7'F4/(T-1);
		sumOmega122= (1/(T-1))*(0.8*(lag0(F7,1))'F4+0.6*(lag0(F7,2))'F4+0.4*(lag0(F7,3))'F4+0.2*(lag0(F7,4))'F4);
		sumOmega123= (1/(T-1))*(0.8*(lag0(F4,1))'F7+0.6*(lag0(F4,2))'F7+0.4*(lag0(F4,3))'F7+0.2*(lag0(F4,4))'F7);

		sumOmega124= F5'F5/(T-1);
		sumOmega125= (2/(T-1))*(0.8*(lag0(F5,1))'F5+0.6*(lag0(F5,2))'F5+0.4*(lag0(F5,3))'F5+0.2*(lag0(F5,4))'F5);

		sumOmega126= F6'F5/(T-1);
		sumOmega127= (1/(T-1))*(0.8*(lag0(F6,1))'F5+0.6*(lag0(F6,2))'F5+0.4*(lag0(F6,3))'F5+0.2*(lag0(F6,4))'F5);
		sumOmega128= (1/(T-1))*(0.8*(lag0(F5,1))'F6+0.6*(lag0(F5,2))'F6+0.4*(lag0(F5,3))'F6+0.2*(lag0(F5,4))'F6);

		sumOmega129= F7'F5/(T-1);
		sumOmega130= (1/(T-1))*(0.8*(lag0(F7,1))'F5+0.6*(lag0(F7,2))'F5+0.4*(lag0(F7,3))'F5+0.2*(lag0(F7,4))'F5);
		sumOmega131= (1/(T-1))*(0.8*(lag0(F5,1))'F7+0.6*(lag0(F5,2))'F7+0.4*(lag0(F5,3))'F7+0.2*(lag0(F5,4))'F7);

		sumOmega132= F6'F6/(T-1);
		sumOmega133= (2/(T-1))*(0.8*(lag0(F6,1))'F6+0.6*(lag0(F6,2))'F6+0.4*(lag0(F6,3))'F6+0.2*(lag0(F6,4))'F5);

		sumOmega134= F7'F6/(T-1);
		sumOmega135= (1/(T-1))*(0.8*(lag0(F7,1))'F6+0.6*(lag0(F7,2))'F6+0.4*(lag0(F7,3))'F6+0.2*(lag0(F7,4))'F6);
		sumOmega136= (1/(T-1))*(0.8*(lag0(F6,1))'F7+0.6*(lag0(F6,2))'F7+0.4*(lag0(F6,3))'F7+0.2*(lag0(F6,4))'F7);

		sumOmega137= F7'F7/(T-1);
		sumOmega138= (2/(T-1))*(0.8*(lag0(F7,1))'F7+0.6*(lag0(F7,2))'F7+0.4*(lag0(F7,3))'F7+0.2*(lag0(F7,4))'F7);

		//code for OmegaHatFi again
		
		OmegaHatFi[0][0]=sumOmega62+sumOmega63; 
		OmegaHatFi[1][0]=sumOmega64+sumOmega65+sumOmega66; 
		OmegaHatFi[2][0]=sumOmega67+sumOmega68+sumOmega69; 
		OmegaHatFi[3][0]=sumOmega70+sumOmega71+sumOmega72;
		OmegaHatFi[4][0]=sumOmega73+sumOmega74+sumOmega75;
		OmegaHatFi[5][0]=sumOmega76+sumOmega77+sumOmega78;
		OmegaHatFi[6][0]=sumOmega79+sumOmega80+sumOmega81;
		

		OmegaHatFi[0][1]=OmegaHatFi[1][0]'; 
		OmegaHatFi[1][1]=sumOmega82+sumOmega83; 
		OmegaHatFi[2][1]=sumOmega84+sumOmega85+sumOmega86; 
		OmegaHatFi[3][1]=sumOmega87+sumOmega88+sumOmega89;
		OmegaHatFi[4][1]=sumOmega90+sumOmega91+sumOmega92;
		OmegaHatFi[5][1]=sumOmega93+sumOmega94+sumOmega95;
		OmegaHatFi[6][1]=sumOmega96+sumOmega97+sumOmega98;

		OmegaHatFi[0][2]=OmegaHatFi[2][0]'; 
		OmegaHatFi[1][2]=OmegaHatFi[2][1]'; 
		OmegaHatFi[2][2]=sumOmega99+sumOmega100; 
		OmegaHatFi[3][2]=sumOmega101+sumOmega102+sumOmega103;
		OmegaHatFi[4][2]=sumOmega104+sumOmega105+sumOmega106;
		OmegaHatFi[5][2]=sumOmega107+sumOmega108+sumOmega109;
		OmegaHatFi[6][2]=sumOmega110+sumOmega111+sumOmega112;
		

		OmegaHatFi[0][3]=OmegaHatFi[3][0]'; 
		OmegaHatFi[1][3]=OmegaHatFi[3][1]'; 
		OmegaHatFi[2][3]=OmegaHatFi[3][2]'; 
		OmegaHatFi[3][3]=sumOmega113+sumOmega114;
		OmegaHatFi[4][3]=sumOmega115+sumOmega116+sumOmega117;
		OmegaHatFi[5][3]=sumOmega118+sumOmega119+sumOmega120;
		OmegaHatFi[6][3]=sumOmega121+sumOmega122+sumOmega123;

		OmegaHatFi[0][4]=OmegaHatFi[4][0]'; 
		OmegaHatFi[1][4]=OmegaHatFi[4][1]'; 
		OmegaHatFi[2][4]=OmegaHatFi[4][2]'; 
		OmegaHatFi[3][4]=OmegaHatFi[4][3]';
		OmegaHatFi[4][4]=sumOmega124+sumOmega125;
		OmegaHatFi[5][4]=sumOmega126+sumOmega127+sumOmega128;
		OmegaHatFi[6][4]=sumOmega129+sumOmega130+sumOmega131;
		

		OmegaHatFi[0][5]=OmegaHatFi[5][0]'; 
		OmegaHatFi[1][5]=OmegaHatFi[5][1]'; 
		OmegaHatFi[2][5]=OmegaHatFi[5][2]'; 
		OmegaHatFi[3][5]=OmegaHatFi[5][3]';
		OmegaHatFi[4][5]=OmegaHatFi[5][4]';
		OmegaHatFi[5][5]=sumOmega132+sumOmega133;
		OmegaHatFi[6][5]=sumOmega134+sumOmega135+sumOmega136;

		OmegaHatFi[0][6]=OmegaHatFi[6][0]'; 
		OmegaHatFi[1][6]=OmegaHatFi[6][1]'; 
		OmegaHatFi[2][6]=OmegaHatFi[6][2]'; 
		OmegaHatFi[3][6]=OmegaHatFi[6][3]';
		OmegaHatFi[4][6]=OmegaHatFi[6][4]';
		OmegaHatFi[5][6]=OmegaHatFi[6][5]';
		OmegaHatFi[6][6]=sumOmega137+sumOmega138;
		
		//code for OmegaHatFei again

		OmegaHatFei[0][0]=sumOmega20+sumOmega21+sumOmega22; 
		OmegaHatFei[1][0]=sumOmega23+sumOmega24+sumOmega25; 
		OmegaHatFei[2][0]=sumOmega26+sumOmega27+sumOmega28; 
		OmegaHatFei[3][0]=sumOmega29+sumOmega30+sumOmega31;
		OmegaHatFei[4][0]=sumOmega32+sumOmega33+sumOmega34;
		OmegaHatFei[5][0]=sumOmega35+sumOmega36+sumOmega37;
		OmegaHatFei[6][0]=sumOmega38+sumOmega39+sumOmega40;
		

		OmegaHatFei[0][1]=sumOmega41+sumOmega42+sumOmega43; 
		OmegaHatFei[1][1]=sumOmega44+sumOmega45+sumOmega46; 
		OmegaHatFei[2][1]=sumOmega47+sumOmega48+sumOmega49; 
		OmegaHatFei[3][1]=sumOmega50+sumOmega51+sumOmega52;
		OmegaHatFei[4][1]=sumOmega53+sumOmega54+sumOmega55;
		OmegaHatFei[5][1]=sumOmega56+sumOmega57+sumOmega58;
		OmegaHatFei[6][1]=sumOmega59+sumOmega60+sumOmega61;
		
		//code for GammaHatFei
		GammaHatFei[0][0]=sumOmega20+sumOmega21; 
		GammaHatFei[1][0]=sumOmega23+sumOmega24; 
		GammaHatFei[2][0]=sumOmega26+sumOmega27; 
		GammaHatFei[3][0]=sumOmega29+sumOmega30;
		GammaHatFei[4][0]=sumOmega32+sumOmega33;
		GammaHatFei[5][0]=sumOmega35+sumOmega36;
		GammaHatFei[6][0]=sumOmega38+sumOmega39;

		GammaHatFei[0][1]=sumOmega41+sumOmega42; 
		GammaHatFei[1][1]=sumOmega44+sumOmega45; 
		GammaHatFei[2][1]=sumOmega47+sumOmega48; 
		GammaHatFei[3][1]=sumOmega50+sumOmega51;
		GammaHatFei[4][1]=sumOmega53+sumOmega54;
		GammaHatFei[5][1]=sumOmega56+sumOmega57;
		GammaHatFei[6][1]=sumOmega59+sumOmega60;

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
		DW=(c-lag0(c,1))'(c-lag0(c,1))/Ra;
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
		IC =log(C2)+7*(59/780)*log(59/780);
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
 		println("FMOLS b2=",OLSbPlusPlus,"FMOLS t2=",174.41*FMOLSVART);

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