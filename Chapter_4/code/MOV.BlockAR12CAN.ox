#include <oxstd.h>
#include <oxprob.h>
main()			// Overlapping Block Bootstrap Code (Trial version) 
{
				// 20 blocks of length (25x1)
				
	decl mresults = zeros(16,5000);
	decl zzz,UR,m_mX1,m_mX2,m_mX3,m_mX4,m_mX5;
	decl m_mY1,m_mY2,m_mY3,m_mY4,m_mY5,m_mZ1,m_mZ2,m_mZ3,m_mZ4,m_mZ5;;
	decl MY=loadmat("G:\Chapter3.BOOT2.Data1.in7");
	decl MM = MY[0:][2];
	decl MX = MM';
	decl A1=MX[0][0:121];
	
	
	decl A2=MX[0][122:243];

							// non-overlapping blocks 
	decl A3=MX[0][244:365];
	decl A4=MX[0][366:487];
		
	
	decl MYA = diff0(MM,1);
	decl MYB = lag0(MM,1);
	decl MYC = ones(488,1);
	decl MY1 = lag0(MM,1);
	decl MY2 = lag0(MM,2);
	decl MY3 = lag0(MM,3);
	decl MY4 = lag0(MM,4);
	decl MY5 = lag0(MM,5);
	decl MY6 = lag0(MM,6);
	decl MY7 = lag0(MM,7);
	decl MY8 = lag0(MM,8);
	decl MY9 = lag0(MM,9);
	decl MY10 = lag0(MM,10);
	decl MY11 = lag0(MM,11);
	decl MY12 = lag0(MM,12);
	decl beta,amtxxinv,res1,res2,res3,res4,q2,t2; 
	decl y= MM;
	decl x= MYC~MY1~MY2~MY3~MY4~MY5~MY6~MY7~MY8~MY9~MY10~MY11~MY12;
	
	olsc(y,x,&beta,&amtxxinv);
	res1 = y-x*beta;
	res2 = res1'res1/(488-12);
	res3 = (sqrt(res2))*(sqrt(amtxxinv));
	res4 = diagonal(res3);	
	q2 = res4';
	t2 = beta./q2;
	println("beta=",beta, "t-stat=",t2);

	 	for (zzz=0; zzz<5000; ++zzz)
	{

	// non-overlapping blocks
	decl F1= {{A1},{A2},{A3},{A4}};
	decl Y1 = zeros(122,1);
	decl Y2 = zeros(122,1);
	decl Y3 = zeros(122,1);
	decl Y4 = zeros(122,1);
	
	decl YY = <>;
	decl X2 = <0:3>;
	decl X1 = X2';
	decl P1 = X1[ ranu(1,4) * rows(X1) ][]; // trial sampling (will use random sampling with replacement in final version)
	decl N = {};
	decl a,b,c,d,e,f,g,h,i,j,k,l,n,m,o,p,q,r,s,t,u,v;



	for(j=0; j<4 ;++j)
	{								// code for loops
		for(i=0; i<4 ;++i)
		{							// code for loops
		   	if(P1[j]== i)break
		}	
	
	N ~=F1[i];
	}
	decl A = N[0];
	decl B = N[1];
	decl C = N[2];
	decl D = N[3];
	
	
	
	
	for(k=0; k<122 ;++k)			//  code for loops
		{
			Y1[k] = (A[k]);
		}
	
	
	for(n=0; n<122 ;++n)
		{
			Y2[n] = (B[n]);	   //  code for loops
		}
		
	
	for(m=0; m<122 ;++m)
		{
			Y3[m] = (C[m]);		// code for loops
		}
		
	
	for(o=0; o<122 ;++o)
		{
			Y4[o] = (D[o]);		// code for loops
		}
	

		
	
	YY = Y1|Y2|Y3|Y4;
	

	decl XYA = diff0(YY,1);
	decl XYB = lag0(YY,1);
	decl XYC = ones(488,1);
	decl XY1 = lag0(YY,1);
	decl XY2 = lag0(YY,2);
	decl XY3 = lag0(YY,3);
	decl XY4 = lag0(YY,4);
	decl XY5 = lag0(YY,5);
	decl XY6 = lag0(YY,6);
	decl XY7 = lag0(YY,7);
	decl XY8 = lag0(YY,8);
	decl XY9 = lag0(YY,9);
	decl XY10 = lag0(YY,10);
	decl XY11 = lag0(YY,11);
	decl XY12 = lag0(YY,12);
	decl beta2,amtxxinv2,ress1,ress2,ress3,ress4,qq2,tt2; 
	decl y1= YY;
	decl x1= XYC~XY1~XY2~XY3~XY4~XY5~XY6~XY7~XY8~XY9~XY10~XY11~XY12;

	
	olsc(y1,x1,&beta2,&amtxxinv2);
	ress1 = y1-x1*beta2;
	ress2 = ress1'ress1/(488-12);
	ress3 = sqrt((ress2)*(amtxxinv2));
	ress4 = diagonal(ress3);	
	qq2 = ress4';
	tt2 = beta2./qq2;
	UR = sumc(beta2);
	
	
	m_mX1 = beta2[0];		// generate results
	m_mX2 = beta2[1];		// generate results
	m_mX3 = beta2[4];		// generate results
	m_mX4 = beta2[8];		// generate results
	m_mX5 = beta2[12];		// generate results
	
	m_mY1 = tt2[0];   // generate results
	m_mY2 = tt2[1];	  // generate results
	m_mY3 = tt2[4];   // generate results
	m_mY4 = tt2[8];	   // generate results
	m_mY5 = tt2[12];   // generate results
	
	m_mZ1 = qq2[0];	// generate results
	m_mZ2 = qq2[1];	 // generate results
	m_mZ3 = qq2[4];	// generate results
	m_mZ4 = qq2[8];	 // generate results
	m_mZ5 = qq2[12];	// generate results

	      
	mresults[0][zzz]= m_mX1;
	mresults[1][zzz]= m_mX2;
	mresults[2][zzz]= m_mX3;
	mresults[3][zzz]= m_mX4;
	mresults[4][zzz]= m_mX5;

	mresults[5][zzz]= m_mY1;
	mresults[6][zzz]= m_mY2;
	mresults[7][zzz]= m_mY3;
	mresults[8][zzz]= m_mY4;
	mresults[9][zzz]= m_mY5;

	mresults[10][zzz]= m_mZ1;
	mresults[11][zzz]= m_mZ2;
	mresults[12][zzz]= m_mZ3;
	mresults[13][zzz]= m_mZ4;
	mresults[14][zzz]= m_mZ5;
	mresults[15][zzz]= UR;
	
	
	
	}
	savemat("G:\BOOTDATAMB.CAN.in7",mresults');

	println("average results b=", meanr(mresults[1][0:]));// compute averages of mean and std.dev
	println("average t-value results=", meanr(mresults[6][0:]));
	println("average std.error results=", meanr(mresults[11][0:]));

	

	
	

	
}