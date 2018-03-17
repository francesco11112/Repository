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
		decl OmegaHatFei = zeros(12,2);
		decl OmegaHatFi = zeros(12,12);
		decl OmegaHatDotFei = zeros(12,12);
		decl OmegaHatDotuei = zeros(1,1);
		decl GammaHatFei = zeros(12,2);
		decl Gamma12Hat = zeros(1,2);
		decl GammaHatueiPlus = zeros(1,2);
		decl GammaHatFeiPlus = zeros(12,2);
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
		decl sumOmega140,sumOmega141,sumOmega142,sumOmega143,sumOmega144,sumOmega145,sumOmega146,sumOmega147,sumOmega148,sumOmega149;
		decl sumOmega150,sumOmega151,sumOmega152,sumOmega153,sumOmega154,sumOmega155,sumOmega156,sumOmega157,sumOmega158,sumOmega159;
		decl sumOmega160,sumOmega161,sumOmega162,sumOmega163,sumOmega164,sumOmega165,sumOmega166,sumOmega167,sumOmega168,sumOmega169;
		decl sumOmega170,sumOmega171,sumOmega172,sumOmega173,sumOmega174,sumOmega175,sumOmega176,sumOmega177,sumOmega178,sumOmega179;
		decl sumOmega180,sumOmega181,sumOmega182,sumOmega183,sumOmega184,sumOmega185,sumOmega186,sumOmega187,sumOmega188,sumOmega189;
		decl sumOmega190,sumOmega191,sumOmega192,sumOmega193,sumOmega194,sumOmega195,sumOmega196,sumOmega197,sumOmega198,sumOmega199,sumOmega200;
		decl sumOmega201,sumOmega202,sumOmega203,sumOmega204,sumOmega205,sumOmega206,sumOmega207,sumOmega208,sumOmega209;
		decl sumOmega210,sumOmega211,sumOmega212,sumOmega213,sumOmega214,sumOmega215,sumOmega216,sumOmega217,sumOmega218,sumOmega219;
		decl sumOmega220,sumOmega221,sumOmega222,sumOmega223,sumOmega224,sumOmega225,sumOmega226,sumOmega227,sumOmega228,sumOmega229;
		decl sumOmega230,sumOmega231,sumOmega232,sumOmega233,sumOmega234,sumOmega235,sumOmega236,sumOmega237,sumOmega238,sumOmega239;
		decl sumOmega240,sumOmega241,sumOmega242,sumOmega243,sumOmega244,sumOmega245,sumOmega246,sumOmega247,sumOmega248,sumOmega249;
		decl sumOmega250,sumOmega251,sumOmega252,sumOmega253,sumOmega254,sumOmega255,sumOmega256,sumOmega257,sumOmega258,sumOmega259;
		decl sumOmega260,sumOmega261,sumOmega262,sumOmega263,sumOmega264,sumOmega265,sumOmega266,sumOmega267,sumOmega268,sumOmega269;
		decl sumOmega270,sumOmega271,sumOmega272,sumOmega273,sumOmega274,sumOmega275,sumOmega276,sumOmega277,sumOmega278,sumOmega279;
		decl sumOmega280,sumOmega281,sumOmega282,sumOmega283,sumOmega284,sumOmega285,sumOmega286,sumOmega287,sumOmega288,sumOmega289;
		decl sumOmega290,sumOmega291,sumOmega292,sumOmega293,sumOmega294,sumOmega295,sumOmega296,sumOmega297,sumOmega298,sumOmega299,sumOmega300;
		decl sumOmega301,sumOmega302,sumOmega303,sumOmega304,sumOmega305,sumOmega306,sumOmega307,sumOmega308,sumOmega309,sumOmega310;
		decl sumOmega311,sumOmega312,sumOmega313,sumOmega314,sumOmega315;
		

		
		decl sumGamma1,sumGamma2,sumGamma3,sumGamma4,sumGamma11,sumGamma12,sumGamma21,sumGamma22,Omega11Hat,Omega11HatPlus,pval1,pval2,t3,t4;
		decl FMOLSVAR1,FMOLSVAR2,FMOLSVART,IC,DW,Fstat1,Fstat2,Fstat,amsval,DXX,R,Ra,Rb,R2,c1,c2,c3,PrimeGammaHat,mx,i,y,yHat,x1,x2,x3,X,b,OLSbPlus,OLSbPlus1,OLSbPlusPlus,Delta1, Delta2,tPlus,T,amxinv,c,e1,e2,rho,rhoHat,Omega22Hatinv,t,w,d,p,q;

		println("FMOLS Consumption Function Estimates Using Income and LA.");
		decl XA,xa,xb,ya,amsval2,amsvec2,F,Lambda,U,Zstar,YHAT,rhoHat2,X2,y2,b2,ba,F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,e,amx2inv,dd,amx1inv,amx3inv,X1;
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
		F = sqrt(39)*eigen[0:][0:11];
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
		F8=F[0:][7];
		F9=F[0:][8];
		F10=F[0:][9];
		F11=F[0:][10];
		F12=F[0:][11];

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

		sumOmega41=	F8'e1/(T-1);
		sumOmega42=	(1/(T-1))*(0.8*(lag0(F8,1))'e1+0.6*(lag0(F8,2))'e1+0.4*(lag0(F8,3))'e1+0.2*(lag0(F8,4))'e1);
		sumOmega43= (1/(T-1))*(0.8*(lag0(e1,1))'F8+0.6*(lag0(e1,2))'F8+0.4*(lag0(e1,3))'F8+0.2*(lag0(e1,4))'F8);

		sumOmega44=	F9'e1/(T-1);
		sumOmega45=	(1/(T-1))*(0.8*(lag0(F9,1))'e1+0.6*(lag0(F9,2))'e1+0.4*(lag0(F9,3))'e1+0.2*(lag0(F9,4))'e1);
		sumOmega46= (1/(T-1))*(0.8*(lag0(e1,1))'F9+0.6*(lag0(e1,2))'F9+0.4*(lag0(e1,3))'F9+0.2*(lag0(e1,4))'F9);
							   								
		sumOmega47=	F10'e1/(T-1);
		sumOmega48=	(1/(T-1))*(0.8*(lag0(F10,1))'e1+0.6*(lag0(F10,2))'e1+0.4*(lag0(F10,3))'e1+0.2*(lag0(F10,4))'e1);
		sumOmega49= (1/(T-1))*(0.8*(lag0(e1,1))'F10+0.6*(lag0(e1,2))'F10+0.4*(lag0(e1,3))'F10+0.2*(lag0(e1,4))'F10);

		sumOmega50=	F11'e1/(T-1);
		sumOmega51=	(1/(T-1))*(0.8*(lag0(F11,1))'e1+0.6*(lag0(F11,2))'e1+0.4*(lag0(F11,3))'e1+0.2*(lag0(F11,4))'e1);
		sumOmega52= (1/(T-1))*(0.8*(lag0(e1,1))'F11+0.6*(lag0(e1,2))'F11+0.4*(lag0(e1,3))'F11+0.2*(lag0(e1,4))'F11);

		sumOmega53=	F12'e1/(T-1);
		sumOmega54=	(1/(T-1))*(0.8*(lag0(F12,1))'e1+0.6*(lag0(F12,2))'e1+0.4*(lag0(F12,3))'e1+0.2*(lag0(F12,4))'e1);
		sumOmega55= (1/(T-1))*(0.8*(lag0(e1,1))'F12+0.6*(lag0(e1,2))'F12+0.4*(lag0(e1,3))'F12+0.2*(lag0(e1,4))'F12);




		 
		
		sumOmega56=	F1'e2/(T-1);
		sumOmega57=	(1/(T-1))*(0.8*(lag0(F1,1))'e2+0.6*(lag0(F1,2))'e2+0.4*(lag0(F1,3))'e2+0.2*(lag0(F1,4))'e2);
		sumOmega58= (1/(T-1))*(0.8*(lag0(e2,1))'F1+0.6*(lag0(e2,2))'F1+0.4*(lag0(e2,3))'F1+0.2*(lag0(e2,4))'F1);

		sumOmega59=	F2'e2/(T-1);
		sumOmega60=	(1/(T-1))*(0.8*(lag0(F2,1))'e2+0.6*(lag0(F2,2))'e2+0.4*(lag0(F2,3))'e2+0.2*(lag0(F2,4))'e2);
		sumOmega61= (1/(T-1))*(0.8*(lag0(e2,1))'F2+0.6*(lag0(e2,2))'F2+0.4*(lag0(e2,3))'F2+0.2*(lag0(e2,4))'F2);

		sumOmega62=	F3'e2/(T-1);
		sumOmega63=	(1/(T-1))*(0.8*(lag0(F3,1))'e2+0.6*(lag0(F3,2))'e2+0.4*(lag0(F3,3))'e2+0.2*(lag0(F3,4))'e2);
		sumOmega64= (1/(T-1))*(0.8*(lag0(e2,1))'F3+0.6*(lag0(e2,2))'F3+0.4*(lag0(e2,3))'F3+0.2*(lag0(e2,4))'F3);

		sumOmega65=	F4'e2/(T-1);
		sumOmega66=	(1/(T-1))*(0.8*(lag0(F4,1))'e2+0.6*(lag0(F4,2))'e2+0.4*(lag0(F4,3))'e2+0.2*(lag0(F4,4))'e2);
		sumOmega67= (1/(T-1))*(0.8*(lag0(e2,1))'F4+0.6*(lag0(e2,2))'F4+0.4*(lag0(e2,3))'F4+0.2*(lag0(e2,4))'F4);
							   								
		sumOmega68=	F5'e2/(T-1);
		sumOmega69=	(1/(T-1))*(0.8*(lag0(F5,1))'e2+0.6*(lag0(F5,2))'e2+0.4*(lag0(F5,3))'e2+0.2*(lag0(F5,4))'e2);
		sumOmega70= (1/(T-1))*(0.8*(lag0(e2,1))'F5+0.6*(lag0(e2,2))'F5+0.4*(lag0(e2,3))'F5+0.2*(lag0(e2,4))'F5);

		sumOmega71=	F6'e2/(T-1);
		sumOmega72=	(1/(T-1))*(0.8*(lag0(F6,1))'e2+0.6*(lag0(F6,2))'e2+0.4*(lag0(F6,3))'e2+0.2*(lag0(F6,4))'e2);
		sumOmega73= (1/(T-1))*(0.8*(lag0(e2,1))'F6+0.6*(lag0(e2,2))'F6+0.4*(lag0(e2,3))'F6+0.2*(lag0(e2,4))'F6);

		sumOmega74=	F7'e2/(T-1);
		sumOmega75=	(1/(T-1))*(0.8*(lag0(F7,1))'e2+0.6*(lag0(F7,2))'e2+0.4*(lag0(F7,3))'e2+0.2*(lag0(F7,4))'e2);
		sumOmega76= (1/(T-1))*(0.8*(lag0(e2,1))'F7+0.6*(lag0(e2,2))'F7+0.4*(lag0(e2,3))'F7+0.2*(lag0(e2,4))'F7);

		sumOmega77=	F8'e2/(T-1);
		sumOmega78=	(1/(T-1))*(0.8*(lag0(F8,1))'e2+0.6*(lag0(F8,2))'e2+0.4*(lag0(F8,3))'e2+0.2*(lag0(F8,4))'e2);
		sumOmega79= (1/(T-1))*(0.8*(lag0(e2,1))'F8+0.6*(lag0(e2,2))'F8+0.4*(lag0(e2,3))'F8+0.2*(lag0(e2,4))'F8);

		sumOmega80=	F9'e2/(T-1);
		sumOmega81=	(1/(T-1))*(0.8*(lag0(F9,1))'e2+0.6*(lag0(F9,2))'e2+0.4*(lag0(F9,3))'e2+0.2*(lag0(F9,4))'e2);
		sumOmega82= (1/(T-1))*(0.8*(lag0(e2,1))'F9+0.6*(lag0(e2,2))'F9+0.4*(lag0(e2,3))'F9+0.2*(lag0(e2,4))'F9);
							   								
		sumOmega83=	F10'e2/(T-1);
		sumOmega84=	(1/(T-1))*(0.8*(lag0(F10,1))'e2+0.6*(lag0(F10,2))'e2+0.4*(lag0(F10,3))'e2+0.2*(lag0(F10,4))'e2);
		sumOmega85= (1/(T-1))*(0.8*(lag0(e2,1))'F10+0.6*(lag0(e2,2))'F10+0.4*(lag0(e2,3))'F10+0.2*(lag0(e2,4))'F10);

		sumOmega86=	F11'e2/(T-1);
		sumOmega87=(1/(T-1))*(0.8*(lag0(F11,1))'e2+0.6*(lag0(F11,2))'e2+0.4*(lag0(F11,3))'e2+0.2*(lag0(F11,4))'e2);
		sumOmega88= (1/(T-1))*(0.8*(lag0(e2,1))'F11+0.6*(lag0(e2,2))'F11+0.4*(lag0(e2,3))'F11+0.2*(lag0(e2,4))'F11);

		sumOmega89=	F12'e2/(T-1);
		sumOmega90=	(1/(T-1))*(0.8*(lag0(F12,1))'e2+0.6*(lag0(F12,2))'e2+0.4*(lag0(F12,3))'e2+0.2*(lag0(F12,4))'e2);
		sumOmega91= (1/(T-1))*(0.8*(lag0(e2,1))'F12+0.6*(lag0(e2,2))'F12+0.4*(lag0(e2,3))'F12+0.2*(lag0(e2,4))'F12);




		// code for OmegaHatFi

		sumOmega92=	F1'F1/(T-1);
		sumOmega93=	(2/(T-1))*(0.8*(lag0(F1,1))'F1+0.6*(lag0(F1,2))'F1+0.4*(lag0(F1,3))'F1+0.2*(lag0(F1,4))'F1);
		
		sumOmega94=	F2'F1/(T-1);
		sumOmega95=	(1/(T-1))*(0.8*(lag0(F2,1))'F1+0.6*(lag0(F2,2))'F1+0.4*(lag0(F2,3))'F1+0.2*(lag0(F2,4))'F1);
		sumOmega96= (1/(T-1))*(0.8*(lag0(F1,1))'F2+0.6*(lag0(F1,2))'F2+0.4*(lag0(F1,3))'F2+0.2*(lag0(F1,4))'F2);

		sumOmega97=	F3'F1/(T-1);
		sumOmega98=	(1/(T-1))*(0.8*(lag0(F3,1))'F1+0.6*(lag0(F3,2))'F1+0.4*(lag0(F3,3))'F1+0.2*(lag0(F3,4))'F1);
		sumOmega99= (1/(T-1))*(0.8*(lag0(F1,1))'F3+0.6*(lag0(F1,2))'F3+0.4*(lag0(F1,3))'F3+0.2*(lag0(F1,4))'F3);

		sumOmega100= F4'F1/(T-1);
		sumOmega101= (1/(T-1))*(0.8*(lag0(F4,1))'F1+0.6*(lag0(F4,2))'F1+0.4*(lag0(F4,3))'F1+0.2*(lag0(F4,4))'F1);
		sumOmega102= (1/(T-1))*(0.8*(lag0(F1,1))'F4+0.6*(lag0(F1,2))'F4+0.4*(lag0(F1,3))'F4+0.2*(lag0(F1,4))'F4);
							   								
		sumOmega103=	F5'F1/(T-1);
		sumOmega104=	(1/(T-1))*(0.8*(lag0(F5,1))'F1+0.6*(lag0(F5,2))'F1+0.4*(lag0(F5,3))'F1+0.2*(lag0(F5,4))'F1);
		sumOmega105= (1/(T-1))*(0.8*(lag0(F1,1))'F5+0.6*(lag0(F1,2))'F5+0.4*(lag0(F1,3))'F5+0.2*(lag0(F1,4))'F5);

		sumOmega106=	F6'F1/(T-1);
		sumOmega107=	(1/(T-1))*(0.8*(lag0(F6,1))'F1+0.6*(lag0(F6,2))'F1+0.4*(lag0(F6,3))'F1+0.2*(lag0(F6,4))'F1);
		sumOmega108= (1/(T-1))*(0.8*(lag0(F1,1))'F6+0.6*(lag0(F1,2))'F6+0.4*(lag0(F1,3))'F6+0.2*(lag0(F1,4))'F6);

		sumOmega109=	F7'F1/(T-1);
		sumOmega110=	(1/(T-1))*(0.8*(lag0(F7,1))'F1+0.6*(lag0(F7,2))'F1+0.4*(lag0(F7,3))'F1+0.2*(lag0(F7,4))'F1);
		sumOmega111= (1/(T-1))*(0.8*(lag0(F1,1))'F7+0.6*(lag0(F1,2))'F7+0.4*(lag0(F1,3))'F7+0.2*(lag0(F1,4))'F7);

		sumOmega112=	F8'F1/(T-1);
		sumOmega113=	(1/(T-1))*(0.8*(lag0(F8,1))'F1+0.6*(lag0(F8,2))'F1+0.4*(lag0(F8,3))'F1+0.2*(lag0(F8,4))'F1);
		sumOmega114= (1/(T-1))*(0.8*(lag0(F1,1))'F8+0.6*(lag0(F1,2))'F8+0.4*(lag0(F1,3))'F8+0.2*(lag0(F1,4))'F8);

		sumOmega115=	F9'F1/(T-1);
		sumOmega116=	(1/(T-1))*(0.8*(lag0(F9,1))'F1+0.6*(lag0(F9,2))'F1+0.4*(lag0(F9,3))'F1+0.2*(lag0(F9,4))'F1);
		sumOmega117= (1/(T-1))*(0.8*(lag0(F1,1))'F9+0.6*(lag0(F1,2))'F9+0.4*(lag0(F1,3))'F9+0.2*(lag0(F1,4))'F9);
							   								
		sumOmega118=	F10'F1/(T-1);
		sumOmega119=	(1/(T-1))*(0.8*(lag0(F10,1))'F1+0.6*(lag0(F10,2))'F1+0.4*(lag0(F10,3))'F1+0.2*(lag0(F10,4))'F1);
		sumOmega120= (1/(T-1))*(0.8*(lag0(F1,1))'F10+0.6*(lag0(F1,2))'F10+0.4*(lag0(F1,3))'F10+0.2*(lag0(F1,4))'F10);

		sumOmega121=	F11'F1/(T-1);
		sumOmega122=	(1/(T-1))*(0.8*(lag0(F11,1))'F1+0.6*(lag0(F11,2))'F1+0.4*(lag0(F11,3))'F1+0.2*(lag0(F11,4))'F1);
		sumOmega123= (1/(T-1))*(0.8*(lag0(F1,1))'F11+0.6*(lag0(F1,2))'F11+0.4*(lag0(F1,3))'F11+0.2*(lag0(F1,4))'F11);

		sumOmega124=	F12'F1/(T-1);
		sumOmega125=	(1/(T-1))*(0.8*(lag0(F12,1))'F1+0.6*(lag0(F12,2))'F1+0.4*(lag0(F12,3))'F1+0.2*(lag0(F12,4))'F1);
		sumOmega126= (1/(T-1))*(0.8*(lag0(F1,1))'F12+0.6*(lag0(F1,2))'F12+0.4*(lag0(F1,3))'F12+0.2*(lag0(F1,4))'F12);

		
		sumOmega127=	F2'F2/(T-1);
		sumOmega128=	(2/(T-1))*(0.8*(lag0(F2,1))'F2+0.6*(lag0(F2,2))'F2+0.4*(lag0(F2,3))'F2+0.2*(lag0(F2,4))'F2);
		
		sumOmega129=	F3'F2/(T-1);
		sumOmega130=	(1/(T-1))*(0.8*(lag0(F3,1))'F2+0.6*(lag0(F3,2))'F2+0.4*(lag0(F3,3))'F2+0.2*(lag0(F3,4))'F2);
		sumOmega131= (1/(T-1))*(0.8*(lag0(F2,1))'F3+0.6*(lag0(F2,2))'F3+0.4*(lag0(F2,3))'F3+0.2*(lag0(F2,4))'F3);

		sumOmega132=	F4'F2/(T-1);
		sumOmega133=	(1/(T-1))*(0.8*(lag0(F4,1))'F2+0.6*(lag0(F4,2))'F2+0.4*(lag0(F4,3))'F2+0.2*(lag0(F4,4))'F2);
		sumOmega134= (1/(T-1))*(0.8*(lag0(F2,1))'F4+0.6*(lag0(F2,2))'F4+0.4*(lag0(F2,3))'F4+0.2*(lag0(F2,4))'F4);
							   								
		sumOmega135=	F5'F2/(T-1);
		sumOmega136=	(1/(T-1))*(0.8*(lag0(F5,1))'F2+0.6*(lag0(F5,2))'F2+0.4*(lag0(F5,3))'F2+0.2*(lag0(F5,4))'F2);
		sumOmega137= (1/(T-1))*(0.8*(lag0(F2,1))'F5+0.6*(lag0(F2,2))'F5+0.4*(lag0(F2,3))'F5+0.2*(lag0(F2,4))'F5);

		sumOmega138=	F6'F2/(T-1);
		sumOmega139=	(1/(T-1))*(0.8*(lag0(F6,1))'F2+0.6*(lag0(F6,2))'F2+0.4*(lag0(F6,3))'F2+0.2*(lag0(F6,4))'F2);
		sumOmega140= (1/(T-1))*(0.8*(lag0(F2,1))'F6+0.6*(lag0(F2,2))'F6+0.4*(lag0(F2,3))'F6+0.2*(lag0(F2,4))'F6);

		sumOmega141=	F7'F2/(T-1);
		sumOmega142=	(1/(T-1))*(0.8*(lag0(F7,1))'F2+0.6*(lag0(F7,2))'F2+0.4*(lag0(F7,3))'F2+0.2*(lag0(F7,4))'F2);
		sumOmega143= (1/(T-1))*(0.8*(lag0(F2,1))'F7+0.6*(lag0(F2,2))'F7+0.4*(lag0(F2,3))'F7+0.2*(lag0(F2,4))'F7);

		sumOmega144=	F8'F2/(T-1);
		sumOmega145= (1/(T-1))*(0.8*(lag0(F8,1))'F2+0.6*(lag0(F8,2))'F2+0.4*(lag0(F8,3))'F2+0.2*(lag0(F8,4))'F2);
		sumOmega146= (1/(T-1))*(0.8*(lag0(F2,1))'F8+0.6*(lag0(F2,2))'F8+0.4*(lag0(F2,3))'F8+0.2*(lag0(F2,4))'F8);

		sumOmega147= F9'F2/(T-1);
		sumOmega148= (1/(T-1))*(0.8*(lag0(F9,1))'F2+0.6*(lag0(F9,2))'F2+0.4*(lag0(F9,3))'F2+0.2*(lag0(F9,4))'F2);
		sumOmega149= (1/(T-1))*(0.8*(lag0(F2,1))'F9+0.6*(lag0(F2,2))'F9+0.4*(lag0(F2,3))'F9+0.2*(lag0(F2,4))'F9);
							   								
		sumOmega150= F10'F2/(T-1);
		sumOmega151= (1/(T-1))*(0.8*(lag0(F10,1))'F2+0.6*(lag0(F10,2))'F2+0.4*(lag0(F10,3))'F2+0.2*(lag0(F10,4))'F2);
		sumOmega152= (1/(T-1))*(0.8*(lag0(F2,1))'F10+0.6*(lag0(F2,2))'F10+0.4*(lag0(F2,3))'F10+0.2*(lag0(F2,4))'F10);

		sumOmega153= F11'F2/(T-1);
		sumOmega154= (1/(T-1))*(0.8*(lag0(F11,1))'F2+0.6*(lag0(F11,2))'F2+0.4*(lag0(F11,3))'F2+0.2*(lag0(F11,4))'F2);
		sumOmega155= (1/(T-1))*(0.8*(lag0(F2,1))'F11+0.6*(lag0(F2,2))'F11+0.4*(lag0(F2,3))'F11+0.2*(lag0(F2,4))'F11);

		sumOmega156=F12'F2/(T-1);
		sumOmega157=(1/(T-1))*(0.8*(lag0(F12,1))'F2+0.6*(lag0(F12,2))'F2+0.4*(lag0(F12,3))'F2+0.2*(lag0(F12,4))'F2);
		sumOmega158= (1/(T-1))*(0.8*(lag0(F2,1))'F12+0.6*(lag0(F2,2))'F12+0.4*(lag0(F2,3))'F12+0.2*(lag0(F2,4))'F12);


		
		sumOmega159=	F3'F3/(T-1);
		sumOmega160= (2/(T-1))*(0.8*(lag0(F3,1))'F3+0.6*(lag0(F3,2))'F3+0.4*(lag0(F3,3))'F3+0.2*(lag0(F3,4))'F3);

		sumOmega161= F4'F3/(T-1);
		sumOmega162= (1/(T-1))*(0.8*(lag0(F4,1))'F3+0.6*(lag0(F4,2))'F3+0.4*(lag0(F4,3))'F3+0.2*(lag0(F4,4))'F3);
		sumOmega163= (1/(T-1))*(0.8*(lag0(F3,1))'F4+0.6*(lag0(F3,2))'F4+0.4*(lag0(F3,3))'F4+0.2*(lag0(F3,4))'F4);
							   								
		sumOmega164= F5'F3/(T-1);
		sumOmega165= (1/(T-1))*(0.8*(lag0(F5,1))'F3+0.6*(lag0(F5,2))'F3+0.4*(lag0(F5,3))'F3+0.2*(lag0(F5,4))'F3);
		sumOmega166= (1/(T-1))*(0.8*(lag0(F3,1))'F5+0.6*(lag0(F3,2))'F5+0.4*(lag0(F3,3))'F5+0.2*(lag0(F3,4))'F5);

		sumOmega167= F6'F3/(T-1);
		sumOmega168= (1/(T-1))*(0.8*(lag0(F6,1))'F3+0.6*(lag0(F6,2))'F3+0.4*(lag0(F6,3))'F3+0.2*(lag0(F6,4))'F3);
		sumOmega169= (1/(T-1))*(0.8*(lag0(F3,1))'F6+0.6*(lag0(F3,2))'F6+0.4*(lag0(F3,3))'F6+0.2*(lag0(F3,4))'F6);

		sumOmega170= F7'F3/(T-1);
		sumOmega171= (1/(T-1))*(0.8*(lag0(F7,1))'F3+0.6*(lag0(F7,2))'F3+0.4*(lag0(F7,3))'F3+0.2*(lag0(F7,4))'F3);
		sumOmega172= (1/(T-1))*(0.8*(lag0(F3,1))'F7+0.6*(lag0(F3,2))'F7+0.4*(lag0(F3,3))'F7+0.2*(lag0(F3,4))'F7);

		sumOmega173= F8'F3/(T-1);
		sumOmega174= (1/(T-1))*(0.8*(lag0(F8,1))'F3+0.6*(lag0(F8,2))'F3+0.4*(lag0(F8,3))'F3+0.2*(lag0(F8,4))'F3);
		sumOmega175= (1/(T-1))*(0.8*(lag0(F3,1))'F8+0.6*(lag0(F3,2))'F8+0.4*(lag0(F3,3))'F8+0.2*(lag0(F3,4))'F8);
							   								
		sumOmega176= F9'F3/(T-1);
		sumOmega177= (1/(T-1))*(0.8*(lag0(F9,1))'F3+0.6*(lag0(F9,2))'F3+0.4*(lag0(F9,3))'F3+0.2*(lag0(F9,4))'F3);
		sumOmega178= (1/(T-1))*(0.8*(lag0(F3,1))'F9+0.6*(lag0(F3,2))'F9+0.4*(lag0(F3,3))'F9+0.2*(lag0(F3,4))'F9);

		sumOmega179= F10'F3/(T-1);
		sumOmega180= (1/(T-1))*(0.8*(lag0(F10,1))'F3+0.6*(lag0(F10,2))'F3+0.4*(lag0(F10,3))'F3+0.2*(lag0(F10,4))'F3);
		sumOmega181= (1/(T-1))*(0.8*(lag0(F3,1))'F10+0.6*(lag0(F3,2))'F10+0.4*(lag0(F3,3))'F10+0.2*(lag0(F3,4))'F10);

		sumOmega182= F11'F3/(T-1);
		sumOmega183= (1/(T-1))*(0.8*(lag0(F11,1))'F3+0.6*(lag0(F11,2))'F3+0.4*(lag0(F11,3))'F3+0.2*(lag0(F11,4))'F3);
		sumOmega184= (1/(T-1))*(0.8*(lag0(F3,1))'F11+0.6*(lag0(F3,2))'F11+0.4*(lag0(F3,3))'F11+0.2*(lag0(F3,4))'F11);

		sumOmega185= F12'F3/(T-1);
		sumOmega186= (1/(T-1))*(0.8*(lag0(F12,1))'F3+0.6*(lag0(F12,2))'F3+0.4*(lag0(F12,3))'F3+0.2*(lag0(F12,4))'F3);
		sumOmega187= (1/(T-1))*(0.8*(lag0(F3,1))'F12+0.6*(lag0(F3,2))'F12+0.4*(lag0(F3,3))'F12+0.2*(lag0(F3,4))'F12);

		
		sumOmega188= F4'F4/(T-1);
		sumOmega189= (2/(T-1))*(0.8*(lag0(F4,1))'F4+0.6*(lag0(F4,2))'F4+0.4*(lag0(F4,3))'F4+0.2*(lag0(F4,4))'F4);

		sumOmega190= F5'F4/(T-1);
		sumOmega191= (1/(T-1))*(0.8*(lag0(F5,1))'F4+0.6*(lag0(F5,2))'F4+0.4*(lag0(F5,3))'F4+0.2*(lag0(F5,4))'F4);
		sumOmega192= (1/(T-1))*(0.8*(lag0(F4,1))'F5+0.6*(lag0(F4,2))'F5+0.4*(lag0(F4,3))'F5+0.2*(lag0(F4,4))'F5);

		sumOmega193= F6'F4/(T-1);
		sumOmega194= (1/(T-1))*(0.8*(lag0(F6,1))'F4+0.6*(lag0(F6,2))'F4+0.4*(lag0(F6,3))'F4+0.2*(lag0(F6,4))'F4);
		sumOmega195= (1/(T-1))*(0.8*(lag0(F4,1))'F6+0.6*(lag0(F4,2))'F6+0.4*(lag0(F4,3))'F6+0.2*(lag0(F4,4))'F6);

		sumOmega196= F7'F4/(T-1);
		sumOmega197= (1/(T-1))*(0.8*(lag0(F7,1))'F4+0.6*(lag0(F7,2))'F4+0.4*(lag0(F7,3))'F4+0.2*(lag0(F7,4))'F4);
		sumOmega198= (1/(T-1))*(0.8*(lag0(F4,1))'F7+0.6*(lag0(F4,2))'F7+0.4*(lag0(F4,3))'F7+0.2*(lag0(F4,4))'F7);

		sumOmega199= F8'F4/(T-1);
		sumOmega200= (1/(T-1))*(0.8*(lag0(F8,1))'F4+0.6*(lag0(F8,2))'F4+0.4*(lag0(F8,3))'F4+0.2*(lag0(F8,4))'F4);
		sumOmega201= (1/(T-1))*(0.8*(lag0(F4,1))'F8+0.6*(lag0(F4,2))'F8+0.4*(lag0(F4,3))'F8+0.2*(lag0(F4,4))'F8);

		sumOmega202= F9'F4/(T-1);
		sumOmega203= (1/(T-1))*(0.8*(lag0(F9,1))'F4+0.6*(lag0(F9,2))'F4+0.4*(lag0(F9,3))'F4+0.2*(lag0(F9,4))'F4);
		sumOmega204= (1/(T-1))*(0.8*(lag0(F4,1))'F9+0.6*(lag0(F4,2))'F9+0.4*(lag0(F4,3))'F9+0.2*(lag0(F4,4))'F9);

		sumOmega205= F10'F4/(T-1);
		sumOmega206= (1/(T-1))*(0.8*(lag0(F10,1))'F4+0.6*(lag0(F10,2))'F4+0.4*(lag0(F10,3))'F4+0.2*(lag0(F10,4))'F4);
		sumOmega207= (1/(T-1))*(0.8*(lag0(F4,1))'F10+0.6*(lag0(F4,2))'F10+0.4*(lag0(F4,3))'F10+0.2*(lag0(F4,4))'F10);

		sumOmega208= F11'F4/(T-1);
		sumOmega209= (1/(T-1))*(0.8*(lag0(F11,1))'F4+0.6*(lag0(F11,2))'F4+0.4*(lag0(F11,3))'F4+0.2*(lag0(F11,4))'F4);
		sumOmega210= (1/(T-1))*(0.8*(lag0(F4,1))'F11+0.6*(lag0(F4,2))'F11+0.4*(lag0(F4,3))'F11+0.2*(lag0(F4,4))'F11);

		sumOmega211= F12'F4/(T-1);
		sumOmega212= (1/(T-1))*(0.8*(lag0(F12,1))'F4+0.6*(lag0(F12,2))'F4+0.4*(lag0(F12,3))'F4+0.2*(lag0(F12,4))'F4);
		sumOmega213= (1/(T-1))*(0.8*(lag0(F4,1))'F12+0.6*(lag0(F4,2))'F12+0.4*(lag0(F4,3))'F12+0.2*(lag0(F4,4))'F12);

		
		sumOmega214= F5'F5/(T-1);
		sumOmega215= (2/(T-1))*(0.8*(lag0(F5,1))'F5+0.6*(lag0(F5,2))'F5+0.4*(lag0(F5,3))'F5+0.2*(lag0(F5,4))'F5);

		sumOmega216= F6'F5/(T-1);
		sumOmega217= (1/(T-1))*(0.8*(lag0(F6,1))'F5+0.6*(lag0(F6,2))'F5+0.4*(lag0(F6,3))'F5+0.2*(lag0(F6,4))'F5);
		sumOmega218= (1/(T-1))*(0.8*(lag0(F5,1))'F6+0.6*(lag0(F5,2))'F6+0.4*(lag0(F5,3))'F6+0.2*(lag0(F5,4))'F6);

		sumOmega219= F7'F5/(T-1);
		sumOmega220= (1/(T-1))*(0.8*(lag0(F7,1))'F5+0.6*(lag0(F7,2))'F5+0.4*(lag0(F7,3))'F5+0.2*(lag0(F7,4))'F5);
		sumOmega221= (1/(T-1))*(0.8*(lag0(F5,1))'F7+0.6*(lag0(F5,2))'F7+0.4*(lag0(F5,3))'F7+0.2*(lag0(F5,4))'F7);

		sumOmega222= F8'F5/(T-1);
		sumOmega223= (1/(T-1))*(0.8*(lag0(F8,1))'F5+0.6*(lag0(F8,2))'F5+0.4*(lag0(F8,3))'F5+0.2*(lag0(F8,4))'F5);
		sumOmega224= (1/(T-1))*(0.8*(lag0(F5,1))'F8+0.6*(lag0(F5,2))'F8+0.4*(lag0(F5,3))'F8+0.2*(lag0(F5,4))'F8);

		sumOmega225= F9'F5/(T-1);
		sumOmega226= (1/(T-1))*(0.8*(lag0(F9,1))'F5+0.6*(lag0(F9,2))'F5+0.4*(lag0(F9,3))'F5+0.2*(lag0(F9,4))'F5);
		sumOmega227= (1/(T-1))*(0.8*(lag0(F5,1))'F9+0.6*(lag0(F5,2))'F9+0.4*(lag0(F5,3))'F9+0.2*(lag0(F5,4))'F9);

		sumOmega228= F10'F5/(T-1);
		sumOmega229= (1/(T-1))*(0.8*(lag0(F10,1))'F5+0.6*(lag0(F10,2))'F5+0.4*(lag0(F10,3))'F5+0.2*(lag0(F10,4))'F5);
		sumOmega230= (1/(T-1))*(0.8*(lag0(F5,1))'F10+0.6*(lag0(F5,2))'F10+0.4*(lag0(F5,3))'F10+0.2*(lag0(F5,4))'F10);

		sumOmega231= F11'F5/(T-1);
		sumOmega232= (1/(T-1))*(0.8*(lag0(F11,1))'F5+0.6*(lag0(F11,2))'F5+0.4*(lag0(F11,3))'F5+0.2*(lag0(F11,4))'F5);
		sumOmega233= (1/(T-1))*(0.8*(lag0(F5,1))'F11+0.6*(lag0(F5,2))'F11+0.4*(lag0(F5,3))'F11+0.2*(lag0(F5,4))'F11);
		
		sumOmega234= F12'F5/(T-1);
		sumOmega235= (1/(T-1))*(0.8*(lag0(F12,1))'F5+0.6*(lag0(F12,2))'F5+0.4*(lag0(F12,3))'F5+0.2*(lag0(F12,4))'F5);
		sumOmega236= (1/(T-1))*(0.8*(lag0(F5,1))'F12+0.6*(lag0(F5,2))'F12+0.4*(lag0(F5,3))'F12+0.2*(lag0(F5,4))'F12);

		
		sumOmega237= F6'F6/(T-1);
		sumOmega238= (2/(T-1))*(0.8*(lag0(F6,1))'F6+0.6*(lag0(F6,2))'F6+0.4*(lag0(F6,3))'F6+0.2*(lag0(F6,4))'F6);

		sumOmega239= F7'F6/(T-1);
		sumOmega240= (1/(T-1))*(0.8*(lag0(F7,1))'F6+0.6*(lag0(F7,2))'F6+0.4*(lag0(F7,3))'F6+0.2*(lag0(F7,4))'F6);
		sumOmega241= (1/(T-1))*(0.8*(lag0(F6,1))'F7+0.6*(lag0(F6,2))'F7+0.4*(lag0(F6,3))'F7+0.2*(lag0(F6,4))'F7);

		sumOmega242= F8'F6/(T-1);
		sumOmega243= (1/(T-1))*(0.8*(lag0(F8,1))'F6+0.6*(lag0(F8,2))'F6+0.4*(lag0(F8,3))'F6+0.2*(lag0(F8,4))'F6);
		sumOmega244= (1/(T-1))*(0.8*(lag0(F6,1))'F8+0.6*(lag0(F6,2))'F8+0.4*(lag0(F6,3))'F8+0.2*(lag0(F6,4))'F8);
		
		sumOmega245= F9'F6/(T-1);
		sumOmega246= (1/(T-1))*(0.8*(lag0(F9,1))'F6+0.6*(lag0(F9,2))'F6+0.4*(lag0(F9,3))'F6+0.2*(lag0(F9,4))'F6);
		sumOmega247= (1/(T-1))*(0.8*(lag0(F6,1))'F9+0.6*(lag0(F6,2))'F9+0.4*(lag0(F6,3))'F9+0.2*(lag0(F6,4))'F9);

		sumOmega248= F10'F6/(T-1);
		sumOmega249= (1/(T-1))*(0.8*(lag0(F10,1))'F6+0.6*(lag0(F10,2))'F6+0.4*(lag0(F10,3))'F6+0.2*(lag0(F10,4))'F6);
		sumOmega250= (1/(T-1))*(0.8*(lag0(F6,1))'F10+0.6*(lag0(F6,2))'F10+0.4*(lag0(F6,3))'F10+0.2*(lag0(F6,4))'F10);

		sumOmega251= F11'F6/(T-1);
		sumOmega252= (1/(T-1))*(0.8*(lag0(F11,1))'F6+0.6*(lag0(F11,2))'F6+0.4*(lag0(F11,3))'F6+0.2*(lag0(F11,4))'F6);
		sumOmega253= (1/(T-1))*(0.8*(lag0(F6,1))'F11+0.6*(lag0(F6,2))'F11+0.4*(lag0(F6,3))'F11+0.2*(lag0(F6,4))'F11);

		sumOmega254= F12'F6/(T-1);
		sumOmega255= (1/(T-1))*(0.8*(lag0(F12,1))'F6+0.6*(lag0(F12,2))'F6+0.4*(lag0(F12,3))'F6+0.2*(lag0(F12,4))'F6);
		sumOmega256= (1/(T-1))*(0.8*(lag0(F6,1))'F12+0.6*(lag0(F6,2))'F12+0.4*(lag0(F6,3))'F12+0.2*(lag0(F6,4))'F12);


		sumOmega257= F7'F7/(T-1);
		sumOmega258= (2/(T-1))*(0.8*(lag0(F7,1))'F7+0.6*(lag0(F7,2))'F7+0.4*(lag0(F7,3))'F7+0.2*(lag0(F7,4))'F7);

		sumOmega259= F8'F7/(T-1);
		sumOmega260= (1/(T-1))*(0.8*(lag0(F8,1))'F7+0.6*(lag0(F8,2))'F7+0.4*(lag0(F8,3))'F7+0.2*(lag0(F8,4))'F7);
		sumOmega261= (1/(T-1))*(0.8*(lag0(F7,1))'F8+0.6*(lag0(F7,2))'F8+0.4*(lag0(F7,3))'F8+0.2*(lag0(F7,4))'F8);

		sumOmega262= F9'F7/(T-1);
		sumOmega263= (1/(T-1))*(0.8*(lag0(F9,1))'F7+0.6*(lag0(F9,2))'F7+0.4*(lag0(F9,3))'F7+0.2*(lag0(F9,4))'F7);
		sumOmega264= (1/(T-1))*(0.8*(lag0(F7,1))'F9+0.6*(lag0(F7,2))'F9+0.4*(lag0(F7,3))'F9+0.2*(lag0(F7,4))'F9);

		sumOmega265= F10'F7/(T-1);
		sumOmega266= (1/(T-1))*(0.8*(lag0(F10,1))'F7+0.6*(lag0(F10,2))'F7+0.4*(lag0(F10,3))'F7+0.2*(lag0(F10,4))'F7);
		sumOmega267= (1/(T-1))*(0.8*(lag0(F7,1))'F10+0.6*(lag0(F7,2))'F10+0.4*(lag0(F7,3))'F10+0.2*(lag0(F7,4))'F10);

		sumOmega268= F11'F7/(T-1);
		sumOmega269= (1/(T-1))*(0.8*(lag0(F11,1))'F7+0.6*(lag0(F11,2))'F7+0.4*(lag0(F11,3))'F7+0.2*(lag0(F11,4))'F7);
		sumOmega270= (1/(T-1))*(0.8*(lag0(F7,1))'F11+0.6*(lag0(F7,2))'F11+0.4*(lag0(F7,3))'F11+0.2*(lag0(F7,4))'F11);

		sumOmega271= F12'F7/(T-1);
		sumOmega272= (1/(T-1))*(0.8*(lag0(F12,1))'F7+0.6*(lag0(F12,2))'F7+0.4*(lag0(F12,3))'F7+0.2*(lag0(F12,4))'F7);
		sumOmega273= (1/(T-1))*(0.8*(lag0(F7,1))'F12+0.6*(lag0(F7,2))'F12+0.4*(lag0(F7,3))'F12+0.2*(lag0(F7,4))'F12);

		
		sumOmega274= F8'F8/(T-1);
		sumOmega275= (2/(T-1))*(0.8*(lag0(F8,1))'F8+0.6*(lag0(F8,2))'F8+0.4*(lag0(F8,3))'F8+0.2*(lag0(F8,4))'F8);

		sumOmega276= F9'F8/(T-1);
		sumOmega277= (1/(T-1))*(0.8*(lag0(F9,1))'F8+0.6*(lag0(F9,2))'F8+0.4*(lag0(F9,3))'F8+0.2*(lag0(F9,4))'F8);
		sumOmega278= (1/(T-1))*(0.8*(lag0(F8,1))'F9+0.6*(lag0(F8,2))'F9+0.4*(lag0(F8,3))'F9+0.2*(lag0(F8,4))'F9);
		
		sumOmega279= F10'F8/(T-1);
		sumOmega280= (1/(T-1))*(0.8*(lag0(F10,1))'F8+0.6*(lag0(F10,2))'F8+0.4*(lag0(F10,3))'F8+0.2*(lag0(F10,4))'F8);
		sumOmega281= (1/(T-1))*(0.8*(lag0(F8,1))'F10+0.6*(lag0(F8,2))'F10+0.4*(lag0(F8,3))'F10+0.2*(lag0(F6,4))'F10);

		
		sumOmega282= F11'F8/(T-1);
		sumOmega283= (1/(T-1))*(0.8*(lag0(F11,1))'F8+0.6*(lag0(F11,2))'F8+0.4*(lag0(F11,3))'F8+0.2*(lag0(F11,4))'F8);
		sumOmega284= (1/(T-1))*(0.8*(lag0(F8,1))'F11+0.6*(lag0(F8,2))'F11+0.4*(lag0(F8,3))'F11+0.2*(lag0(F8,4))'F11);

		sumOmega285= F12'F8/(T-1);
		sumOmega286= (1/(T-1))*(0.8*(lag0(F12,1))'F8+0.6*(lag0(F12,2))'F8+0.4*(lag0(F12,3))'F8+0.2*(lag0(F12,4))'F8);
		sumOmega287= (1/(T-1))*(0.8*(lag0(F8,1))'F12+0.6*(lag0(F8,2))'F12+0.4*(lag0(F8,3))'F12+0.2*(lag0(F8,4))'F12);


		sumOmega288= F9'F9/(T-1);
		sumOmega289= (2/(T-1))*(0.8*(lag0(F9,1))'F9+0.6*(lag0(F9,2))'F9+0.4*(lag0(F9,3))'F9+0.2*(lag0(F9,4))'F9);

		sumOmega290= F10'F9/(T-1);
		sumOmega291= (1/(T-1))*(0.8*(lag0(F10,1))'F9+0.6*(lag0(F10,2))'F9+0.4*(lag0(F10,3))'F9+0.2*(lag0(F10,4))'F9);
		sumOmega292= (1/(T-1))*(0.8*(lag0(F9,1))'F10+0.6*(lag0(F9,2))'F10+0.4*(lag0(F9,3))'F10+0.2*(lag0(F9,4))'F10);

		sumOmega293= F11'F9/(T-1);
		sumOmega294= (1/(T-1))*(0.8*(lag0(F11,1))'F9+0.6*(lag0(F11,2))'F9+0.4*(lag0(F11,3))'F9+0.2*(lag0(F11,4))'F9);
		sumOmega295= (1/(T-1))*(0.8*(lag0(F9,1))'F11+0.6*(lag0(F9,2))'F11+0.4*(lag0(F9,3))'F11+0.2*(lag0(F9,4))'F11);

		sumOmega296= F12'F9/(T-1);
		sumOmega297= (1/(T-1))*(0.8*(lag0(F12,1))'F9+0.6*(lag0(F12,2))'F9+0.4*(lag0(F12,3))'F9+0.2*(lag0(F12,4))'F9);
		sumOmega298= (1/(T-1))*(0.8*(lag0(F9,1))'F12+0.6*(lag0(F9,2))'F12+0.4*(lag0(F9,3))'F12+0.2*(lag0(F9,4))'F12);

		sumOmega299= F10'F10/(T-1);
		sumOmega300= (2/(T-1))*(0.8*(lag0(F10,1))'F10+0.6*(lag0(F10,2))'F10+0.4*(lag0(F10,3))'F10+0.2*(lag0(F9,4))'F10);

		sumOmega301= F11'F10/(T-1);
		sumOmega302= (1/(T-1))*(0.8*(lag0(F11,1))'F10+0.6*(lag0(F11,2))'F10+0.4*(lag0(F11,3))'F10+0.2*(lag0(F11,4))'F10);
		sumOmega303= (1/(T-1))*(0.8*(lag0(F10,1))'F11+0.6*(lag0(F10,2))'F11+0.4*(lag0(F10,3))'F11+0.2*(lag0(F10,4))'F11);

		sumOmega304= F12'F10/(T-1);
		sumOmega305= (1/(T-1))*(0.8*(lag0(F12,1))'F10+0.6*(lag0(F12,2))'F10+0.4*(lag0(F12,3))'F10+0.2*(lag0(F12,4))'F10);
		sumOmega306= (1/(T-1))*(0.8*(lag0(F10,1))'F12+0.6*(lag0(F10,2))'F12+0.4*(lag0(F10,3))'F12+0.2*(lag0(F10,4))'F12);

		sumOmega307= F11'F11/(T-1);
		sumOmega308= (2/(T-1))*(0.8*(lag0(F11,1))'F11+0.6*(lag0(F11,2))'F11+0.4*(lag0(F11,3))'F11+0.2*(lag0(F11,4))'F11);

		sumOmega309= F12'F11/(T-1);
		sumOmega310= (1/(T-1))*(0.8*(lag0(F12,1))'F11+0.6*(lag0(F12,2))'F11+0.4*(lag0(F12,3))'F11+0.2*(lag0(F12,4))'F11);
		sumOmega311= (1/(T-1))*(0.8*(lag0(F11,1))'F12+0.6*(lag0(F11,2))'F12+0.4*(lag0(F11,3))'F12+0.2*(lag0(F11,4))'F12);

		sumOmega312= F12'F12/(T-1);
		sumOmega313= (2/(T-1))*(0.8*(lag0(F12,1))'F12+0.6*(lag0(F12,2))'F12+0.4*(lag0(F12,3))'F12+0.2*(lag0(F12,4))'F12);



		  
		
		//code for OmegaHatFi again
		
		OmegaHatFi[0][0]=sumOmega92+sumOmega93; 
		OmegaHatFi[1][0]=sumOmega94+sumOmega95+sumOmega96; 
		OmegaHatFi[2][0]=sumOmega97+sumOmega98+sumOmega99; 
		OmegaHatFi[3][0]=sumOmega100+sumOmega101+sumOmega102;
		OmegaHatFi[4][0]=sumOmega103+sumOmega104+sumOmega105;
		OmegaHatFi[5][0]=sumOmega106+sumOmega107+sumOmega108;
		OmegaHatFi[6][0]=sumOmega109+sumOmega110+sumOmega111;
		OmegaHatFi[7][0]=sumOmega112+sumOmega113+sumOmega114; 
		OmegaHatFi[8][0]=sumOmega115+sumOmega116+sumOmega117;
		OmegaHatFi[9][0]=sumOmega118+sumOmega119+sumOmega120;
		OmegaHatFi[10][0]=sumOmega121+sumOmega122+sumOmega123;
		OmegaHatFi[11][0]=sumOmega124+sumOmega125+sumOmega126;
		

		OmegaHatFi[0][1]=OmegaHatFi[1][0]'; 
		OmegaHatFi[1][1]=sumOmega127+sumOmega128; 
		OmegaHatFi[2][1]=sumOmega129+sumOmega130+sumOmega131; 
		OmegaHatFi[3][1]=sumOmega132+sumOmega133+sumOmega134;
		OmegaHatFi[4][1]=sumOmega135+sumOmega136+sumOmega137;
		OmegaHatFi[5][1]=sumOmega138+sumOmega139+sumOmega140;
		OmegaHatFi[6][1]=sumOmega141+sumOmega142+sumOmega143;
		OmegaHatFi[7][1]=sumOmega144+sumOmega145+sumOmega146; 
		OmegaHatFi[8][1]=sumOmega147+sumOmega148+sumOmega149;
		OmegaHatFi[9][1]=sumOmega150+sumOmega151+sumOmega152;
		OmegaHatFi[10][1]=sumOmega153+sumOmega154+sumOmega155;
		OmegaHatFi[11][1]=sumOmega156+sumOmega157+sumOmega158;

		
		OmegaHatFi[0][2]=OmegaHatFi[2][0]'; 
		OmegaHatFi[1][2]=OmegaHatFi[2][1]'; 
		OmegaHatFi[2][2]=sumOmega159+sumOmega160; 
		OmegaHatFi[3][2]=sumOmega161+sumOmega162+sumOmega163;
		OmegaHatFi[4][2]=sumOmega164+sumOmega165+sumOmega166;
		OmegaHatFi[5][2]=sumOmega167+sumOmega168+sumOmega169;
		OmegaHatFi[6][2]=sumOmega170+sumOmega171+sumOmega172;
		OmegaHatFi[7][2]=sumOmega173+sumOmega174+sumOmega175; 
		OmegaHatFi[8][2]=sumOmega176+sumOmega177+sumOmega178;
		OmegaHatFi[9][2]=sumOmega179+sumOmega180+sumOmega181;
		OmegaHatFi[10][2]=sumOmega182+sumOmega183+sumOmega184;
		OmegaHatFi[11][2]=sumOmega185+sumOmega186+sumOmega187;
		

		OmegaHatFi[0][3]=OmegaHatFi[3][0]'; 
		OmegaHatFi[1][3]=OmegaHatFi[3][1]'; 
		OmegaHatFi[2][3]=OmegaHatFi[3][2]'; 
		OmegaHatFi[3][3]=sumOmega188+sumOmega189;
		OmegaHatFi[4][3]=sumOmega190+sumOmega191+sumOmega192;
		OmegaHatFi[5][3]=sumOmega193+sumOmega194+sumOmega195;
		OmegaHatFi[6][3]=sumOmega196+sumOmega197+sumOmega198;
		OmegaHatFi[7][3]=sumOmega199+sumOmega200+sumOmega201;
		OmegaHatFi[8][3]=sumOmega202+sumOmega203+sumOmega204;
		OmegaHatFi[9][3]=sumOmega205+sumOmega206+sumOmega207;
		OmegaHatFi[10][3]=sumOmega208+sumOmega209+sumOmega210;
		OmegaHatFi[11][3]=sumOmega211+sumOmega212+sumOmega213;


		
		OmegaHatFi[0][4]=OmegaHatFi[4][0]'; 
		OmegaHatFi[1][4]=OmegaHatFi[4][1]'; 
		OmegaHatFi[2][4]=OmegaHatFi[4][2]'; 
		OmegaHatFi[3][4]=OmegaHatFi[4][3]';
		OmegaHatFi[4][4]=sumOmega214+sumOmega215;
		OmegaHatFi[5][4]=sumOmega216+sumOmega217+sumOmega218;
		OmegaHatFi[6][4]=sumOmega219+sumOmega220+sumOmega221;
		OmegaHatFi[7][4]=sumOmega222+sumOmega223+sumOmega224;
		OmegaHatFi[8][4]=sumOmega225+sumOmega226+sumOmega227;
		OmegaHatFi[9][4]=sumOmega228+sumOmega229+sumOmega230;
		OmegaHatFi[10][4]=sumOmega231+sumOmega232+sumOmega233;
		OmegaHatFi[11][4]=sumOmega234+sumOmega235+sumOmega236;
		

		OmegaHatFi[0][5]=OmegaHatFi[5][0]'; 
		OmegaHatFi[1][5]=OmegaHatFi[5][1]'; 
		OmegaHatFi[2][5]=OmegaHatFi[5][2]'; 
		OmegaHatFi[3][5]=OmegaHatFi[5][3]';
		OmegaHatFi[4][5]=OmegaHatFi[5][4]';
		OmegaHatFi[5][5]=sumOmega237+sumOmega238;
		OmegaHatFi[6][5]=sumOmega239+sumOmega240+sumOmega241;
		OmegaHatFi[7][5]=sumOmega242+sumOmega243+sumOmega244;
		OmegaHatFi[8][5]=sumOmega245+sumOmega246+sumOmega247;
		OmegaHatFi[9][5]=sumOmega248+sumOmega249+sumOmega250;
		OmegaHatFi[10][5]=sumOmega251+sumOmega252+sumOmega253;
		OmegaHatFi[11][5]=sumOmega254+sumOmega255+sumOmega256;
		


		
		OmegaHatFi[0][6]=OmegaHatFi[6][0]'; 
		OmegaHatFi[1][6]=OmegaHatFi[6][1]'; 
		OmegaHatFi[2][6]=OmegaHatFi[6][2]'; 
		OmegaHatFi[3][6]=OmegaHatFi[6][3]';
		OmegaHatFi[4][6]=OmegaHatFi[6][4]';
		OmegaHatFi[5][6]=OmegaHatFi[6][5]';
		OmegaHatFi[6][6]=sumOmega257+sumOmega258;
		OmegaHatFi[7][6]=sumOmega259+sumOmega260+sumOmega261;
		OmegaHatFi[8][6]=sumOmega262+sumOmega263+sumOmega264;
		OmegaHatFi[9][6]=sumOmega265+sumOmega266+sumOmega267;
		OmegaHatFi[10][6]=sumOmega268+sumOmega269+sumOmega270;
		OmegaHatFi[11][6]=sumOmega271+sumOmega272+sumOmega273;


		
		OmegaHatFi[0][7]=OmegaHatFi[7][0]'; 
		OmegaHatFi[1][7]=OmegaHatFi[7][1]'; 
		OmegaHatFi[2][7]=OmegaHatFi[7][2]'; 
		OmegaHatFi[3][7]=OmegaHatFi[7][3]';
		OmegaHatFi[4][7]=OmegaHatFi[7][4]';
		OmegaHatFi[5][7]==OmegaHatFi[7][5]';
		OmegaHatFi[6][7]==OmegaHatFi[7][6]';
		OmegaHatFi[7][7]=sumOmega274+sumOmega275;
		OmegaHatFi[8][7]=sumOmega276+sumOmega277+sumOmega278;
		OmegaHatFi[9][7]=sumOmega279+sumOmega280+sumOmega281;
		OmegaHatFi[10][7]=sumOmega282+sumOmega283+sumOmega284;
		OmegaHatFi[11][7]=sumOmega285+sumOmega286+sumOmega287;
		


		
		OmegaHatFi[0][8]=OmegaHatFi[8][0]'; 
		OmegaHatFi[1][8]=OmegaHatFi[8][1]'; 
		OmegaHatFi[2][8]=OmegaHatFi[8][2]'; 
		OmegaHatFi[3][8]=OmegaHatFi[8][3]';
		OmegaHatFi[4][8]=OmegaHatFi[8][4]';
		OmegaHatFi[5][8]=OmegaHatFi[8][5]';
		OmegaHatFi[6][8]=OmegaHatFi[8][6]';
		OmegaHatFi[7][8]=OmegaHatFi[8][7]';
		OmegaHatFi[8][8]=sumOmega288+sumOmega289;
		OmegaHatFi[9][8]=sumOmega290+sumOmega291+sumOmega292;
		OmegaHatFi[10][8]=sumOmega293+sumOmega294+sumOmega295;
		OmegaHatFi[11][8]=sumOmega296+sumOmega297+sumOmega298;

		OmegaHatFi[0][9]=OmegaHatFi[9][0]'; 
		OmegaHatFi[1][9]=OmegaHatFi[9][1]'; 
		OmegaHatFi[2][9]=OmegaHatFi[9][2]'; 
		OmegaHatFi[3][9]=OmegaHatFi[9][3]';
		OmegaHatFi[4][9]=OmegaHatFi[9][4]';
		OmegaHatFi[5][9]=OmegaHatFi[9][5]';
		OmegaHatFi[6][9]=OmegaHatFi[9][6]';
		OmegaHatFi[7][9]=OmegaHatFi[9][7]';
		OmegaHatFi[8][9]=OmegaHatFi[9][8]';
		OmegaHatFi[9][9]=sumOmega299+sumOmega300;
		OmegaHatFi[10][9]=sumOmega301+sumOmega302+sumOmega303;
		OmegaHatFi[11][9]=sumOmega304+sumOmega305+sumOmega306;
		


		
		OmegaHatFi[0][10]=OmegaHatFi[10][0]'; 
		OmegaHatFi[1][10]=OmegaHatFi[10][1]'; 
		OmegaHatFi[2][10]=OmegaHatFi[10][2]'; 
		OmegaHatFi[3][10]=OmegaHatFi[10][3]';
		OmegaHatFi[4][10]=OmegaHatFi[10][4]';
		OmegaHatFi[5][10]=OmegaHatFi[10][5]';
		OmegaHatFi[6][10]=OmegaHatFi[10][6]';
		OmegaHatFi[7][10]=OmegaHatFi[10][7]';
		OmegaHatFi[8][10]=OmegaHatFi[10][8]';
		OmegaHatFi[9][10]=OmegaHatFi[10][9]';
		OmegaHatFi[10][10]=sumOmega307+sumOmega308;
		OmegaHatFi[11][10]=sumOmega309+sumOmega310+sumOmega311;

		OmegaHatFi[0][11]=OmegaHatFi[11][0]'; 
		OmegaHatFi[1][11]=OmegaHatFi[11][1]'; 
		OmegaHatFi[2][11]=OmegaHatFi[11][2]'; 
		OmegaHatFi[3][11]=OmegaHatFi[11][3]';
		OmegaHatFi[4][11]=OmegaHatFi[11][4]';
		OmegaHatFi[5][11]=OmegaHatFi[11][5]';
		OmegaHatFi[6][11]=OmegaHatFi[11][6]';
		OmegaHatFi[7][11]=OmegaHatFi[11][7]';
		OmegaHatFi[8][11]=OmegaHatFi[11][8]';
		OmegaHatFi[9][11]=OmegaHatFi[11][9]';
		OmegaHatFi[10][11]=OmegaHatFi[11][10]';
		OmegaHatFi[11][11]=sumOmega312+sumOmega313;


		
		//code for OmegaHatFei again

		OmegaHatFei[0][0]=sumOmega20+sumOmega21+sumOmega22; 
		OmegaHatFei[1][0]=sumOmega23+sumOmega24+sumOmega25; 
		OmegaHatFei[2][0]=sumOmega26+sumOmega27+sumOmega28; 
		OmegaHatFei[3][0]=sumOmega29+sumOmega30+sumOmega31;
		OmegaHatFei[4][0]=sumOmega32+sumOmega33+sumOmega34;
		OmegaHatFei[5][0]=sumOmega35+sumOmega36+sumOmega37;
		OmegaHatFei[6][0]=sumOmega38+sumOmega39+sumOmega40;
		OmegaHatFei[7][0]=sumOmega41+sumOmega42+sumOmega43; 
		OmegaHatFei[8][0]=sumOmega44+sumOmega45+sumOmega46; 
		OmegaHatFei[9][0]=sumOmega47+sumOmega48+sumOmega49; 
		OmegaHatFei[10][0]=sumOmega50+sumOmega51+sumOmega52;
		OmegaHatFei[11][0]=sumOmega53+sumOmega54+sumOmega55;

		OmegaHatFei[0][1]=sumOmega56+sumOmega57+sumOmega58; 
		OmegaHatFei[1][1]=sumOmega59+sumOmega60+sumOmega61; 
		OmegaHatFei[2][1]=sumOmega62+sumOmega63+sumOmega64; 
		OmegaHatFei[3][1]=sumOmega65+sumOmega66+sumOmega67;
		OmegaHatFei[4][1]=sumOmega68+sumOmega69+sumOmega70;
		OmegaHatFei[5][1]=sumOmega71+sumOmega72+sumOmega73;
		OmegaHatFei[6][1]=sumOmega74+sumOmega75+sumOmega76;
		OmegaHatFei[7][1]=sumOmega77+sumOmega78+sumOmega79; 
		OmegaHatFei[8][1]=sumOmega80+sumOmega81+sumOmega82; 
		OmegaHatFei[9][1]=sumOmega83+sumOmega84+sumOmega85; 
		OmegaHatFei[10][1]=sumOmega86+sumOmega87+sumOmega88;
		OmegaHatFei[11][1]=sumOmega89+sumOmega90+sumOmega91;

		
		
		//code for GammaHatFei
		GammaHatFei[0][0]=sumOmega20+sumOmega21; 
		GammaHatFei[1][0]=sumOmega23+sumOmega24; 
		GammaHatFei[2][0]=sumOmega26+sumOmega27; 
		GammaHatFei[3][0]=sumOmega29+sumOmega30;
		GammaHatFei[4][0]=sumOmega32+sumOmega33;
		GammaHatFei[5][0]=sumOmega35+sumOmega36;
		GammaHatFei[6][0]=sumOmega38+sumOmega39;
		GammaHatFei[7][0]=sumOmega41+sumOmega42; 
		GammaHatFei[8][0]=sumOmega44+sumOmega45; 
		GammaHatFei[9][0]=sumOmega47+sumOmega48; 
		GammaHatFei[10][0]=sumOmega50+sumOmega51;
		GammaHatFei[11][0]=sumOmega53+sumOmega54;

		GammaHatFei[0][1]=sumOmega56+sumOmega57; 
		GammaHatFei[1][1]=sumOmega59+sumOmega60; 
		GammaHatFei[2][1]=sumOmega62+sumOmega63; 
		GammaHatFei[3][1]=sumOmega65+sumOmega66;
		GammaHatFei[4][1]=sumOmega68+sumOmega69;
		GammaHatFei[5][1]=sumOmega71+sumOmega72;
		GammaHatFei[6][1]=sumOmega74+sumOmega75;
		GammaHatFei[7][1]=sumOmega77+sumOmega78; 
		GammaHatFei[8][1]=sumOmega80+sumOmega81; 
		GammaHatFei[9][1]=sumOmega83+sumOmega84; 
		GammaHatFei[10][1]=sumOmega86+sumOmega87;
		GammaHatFei[11][1]=sumOmega89+sumOmega90;

		
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
		IC =log(C2/780)+12*(59/780)*log(780/59);
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