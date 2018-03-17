#include<oxstd.h>

main()
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
		decl sumGamma1,sumGamma2,sumGamma11,sumGamma12,sumGamma21,sumGamma22,pval1,pval2,t3,t4;
		decl DW,Fstat1,Fstat2,Fstat,amsval,DXX,R,Ra,Rb,R2,c1,PrimeGammaHat,mx,i,y,yHat,x1,x2,x3,X,b,OLSbPlus,Delta1, Delta2,tPlus,T,amxinv,c,e1,e2,rho,rhoHat,Omega22Hatinv,t,w,d,p,q;

		println("FMOLS Consumption Function Estimates Using Income and I.R.");
		decl xa,xb,ya,amsval2,amsvec2,Lambda,e,F,Zstar,U;
		decl eigen = zeros(39,39);
		decl Z = zeros(39,0);
		
		// load data-matrix
		mx=loadmat("G:\\CHAPTER5-INT.RA2.in7");

	//initialising variables

		for(i=0;i<20;++i)
		{
		
		// set X,y,b parameters
		y = mx[0:][0+(4*i)];
		x1 = mx[0:][1+(4*i)];
		x2 = mx[0:][2+(4*i)];
		x3 = mx[0:][3+(4*i)];
		X = x1~x2~x3;
		olsc(y,X,&b,&amxinv);	   // OLS estimation
		println("Estimates of country regression ",i);
		c=y-X*b;
		println("OLS b=",b,"OLS c=",c);
		xa = (x2-meanc(x2));
		xb = (x3-meanc(x3));
		ya = (y-meanc(y));	 // load data-matrix

		e = y-X*b;
		Z ~= e;
		Zstar = Z*Z';
		}

		
		eigensym(Zstar,&amsval2,&amsvec2);
		eigen = amsvec2;
		F = sqrt(39)*eigen[0:][0:4];
		Lambda =(F'Z)/39;
		
		for(i=0;i<20;++i)
		{
		println("Lambda2*=",Lambda[0:][0],"Lambda3*=",F[0][0:]);
		U = Z[0:][0+i]-(Lambda[0:][0+i]')*F[0+i][0:]';
		println("REGRESSION= ",i, "U=",U,"e=",Z[0:][0+i],"check=",(Lambda[0:][0+i]')*F[0+i][0:]');
		}


		println("PrimeGammaHat=",PrimeGammaHat,"YHAT=",YHAT,"X=",X);
		println("ROWS-PrimeGammaHat=",rows(PrimeGammaHat),"rows-YHAT=",rows(YHAT),"rows-X=",rows(X));
		println("COLS-PrimeGammaHat=",columns(PrimeGammaHat),"cols-YHAT=",columns(YHAT),"cols-X=",columns(X));
		println("ROWS-GammaHatueiPlus=",rows(GammaHatueiPlus),"rows-GammaHatFeiPlus=",rows(GammaHatFeiPlus),"rows-rhoHat2=",rows(rhoHat2));
		println("COLS-GammaHatueiPlus=",columns(GammaHatueiPlus),"cols-GammaHatFeiPlus=",columns(GammaHatFeiPlus),"cols-rhoHat2=",columns(rhoHat2));
		

		
}

