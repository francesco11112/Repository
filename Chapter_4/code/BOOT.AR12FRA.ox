#include <oxstd.h>
#include <oxprob.h>
#include <oxdraw.h>

main()
{
	decl salt,amxtxinv,XX,YY,x,w,d,b,c,U,P1,X,q,z,j,y,t,i,e,test;
	decl res1,res2,res3,res4,q2,t2,UR;
	decl m_mX1,m_mY1,m_mZ1,m_mX2,m_mY2,m_mZ2,m_mX3,m_mY3,m_mZ3,m_mX4,m_mY4,m_mZ4,m_mX5,m_mY5,m_mZ5;
	decl mresults = zeros(16,5000);
	decl constant = ones(488,1);
	decl s = zeros(488,1);
	decl mx = zeros(488,1);
  	decl t3,t4,res5,res6,R,R2,DW,Fstat1,Fstat2,Fstat,pval1,pval2; 



	decl mz= loadmat("G:\Chapter3.BOOT2.Data1.in7");
	
	mx[] = mz[0:][8];
	YY =mx[0:][];
	XX	= constant~lag0(mx[0:][],1)~lag0(mx[0:][],2)~lag0(mx[0:][],3)~lag0(mx[0:][],4)~lag0(mx[0:][],5)~lag0(mx[0:][],6)~lag0(mx[0:][],7)~lag0(mx[0:][],8)~lag0(mx[0:][],9)~lag0(mx[0:][],10)~lag0(mx[0:][],11)~lag0(mx[0:][],12);
	olsc(YY,XX,&b,&amxtxinv);
	res1 = YY-XX*b;
	res2 = res1'res1/(488-12);
	res3 = (sqrt(res2))*(sqrt(amxtxinv));
	res4 = diagonal(res3);	
	res5 = YY'YY;
	res6 =res1'res1;
	R = res6/res5;
	R2=1-R;
	DW=(res1-lag0(res1,1))'(res1-lag0(res1,1))/res6;
	Fstat1=R2*(488-13);
	Fstat2=(1-R2)*12;
	Fstat=Fstat1/Fstat2;
	println("Fstatistic=",Fstat);
	println("R2=",R2);
	println("D.W.=",DW);
	q2 = res4';
	t2 = b./q2;
	t3 = t2.^2;
	t4 = sqrt(t3);
	pval1 = 2*tailt(t4,463);
	pval2 = 2*tailf(Fstat,12,476);
	println("b=",b, "t-stat=",t2,"pval1=",pval1,"pval2=",pval2);
	
	
	for	(z=0; z<5000; ++z) 
	{

		
	           // create deterministic variables in the database
                                        // formulate the model
    
	q = meanc(mx[0:][0]- 0.00028595*constant-0.28089*lag0(mx[0:][],1)-0.055225*lag0(mx[0:][],2)-0.19775*lag0(mx[0:][],3)+0.032288*lag0(mx[0:][],4)-0.0052426*lag0(mx[0:][],5)-0.12674*lag0(mx[0:][],6)+0.017319*lag0(mx[0:][],7)-0.076188*lag0(mx[0:][],8)-0.0092281*lag0(mx[0:][],9)+0.016186*lag0(mx[0:][],10)-0.014143*lag0(mx[0:][],11)-0.23734*lag0(mx[0:][],12));
		
	U = (mx[0:][0]- 0.00028595*constant-0.28089*lag0(mx[0:][],1)-0.055225*lag0(mx[0:][],2)-0.19775*lag0(mx[0:][],3)+0.032288*lag0(mx[0:][],4)-0.0052426*lag0(mx[0:][],5)-0.12674*lag0(mx[0:][],6)+0.017319*lag0(mx[0:][],7)-0.076188*lag0(mx[0:][],8)-0.0092281*lag0(mx[0:][],9)+0.016186*lag0(mx[0:][],10)-0.014143*lag0(mx[0:][],11)-0.23734*lag0(mx[0:][],12)-q);
	
	P1 = U[ ranu(1,488) * rows(U) ][];
	
	t = P1';
	s[0]=mx[0];
	s[1]=mx[1];
	s[2]=mx[2];
	s[3]=mx[3];
	s[4]=mx[4];
	s[5]=mx[5];
	s[6]=mx[6];
	s[7]=mx[7];
	s[8]=mx[8];
	s[9]=mx[9];
	s[10]=mx[10];
	s[11]=mx[11];
	s[12]=mx[12];
	
	for (j = 0; j<476; ++j)
	{
	s[j+12]= 0.00028595+0.28089*s[j+11]+0.055225*s[j+10]+0.19775*s[j+9]-0.032288*s[j+8]+0.0052426*s[j+7]+0.12674*s[j+6]-0.017319*s[j+5]+0.076188*s[j+4]+0.0092281*s[j+3]-0.016186*s[j+2]+0.014143*s[j+1]+0.23734*s[j]+P1[j+12];
	}																																			
		 
	X = constant~lag0(s[0:][],1)~lag0(s[0:][],2)~lag0(s[0:][],3)~lag0(s[0:][],4)~lag0(s[0:][],5)~lag0(s[0:][],6)~lag0(s[0:][],7)~lag0(s[0:][],8)~lag0(s[0:][],9)~lag0(s[0:][],10)~lag0(s[0:][],11)~lag0(s[0:][],12);
	olsc(s,X,&b,&amxtxinv);
	c = s - X*b;
	d = c'c/(488-12);
	w = sqrt((d)*(amxtxinv));	 
	x = diagonal(w);
	UR = sumc(b);
	
	
	m_mX1 = b[0];		// generate results
	m_mX2 = b[1];		// generate results
	m_mX3 = b[4];		// generate results
	m_mX4 = b[8];		// generate results
	m_mX5 = b[12];		// generate results
	

	m_mZ1 = b[0]/x[0];		 // generate results
	m_mZ2 = b[1]/x[1];	 	// generate results
	m_mZ3 = b[4]/x[4];		// generate results
	m_mZ4 = b[8]/x[8];	 	// generate results
	m_mZ5 = b[12]/x[12];		// generate results
	
	m_mY1 = x[0];		// generate results
	m_mY2 = x[1];	// generate results
	m_mY3 = x[4];	// generate results
	m_mY4 = x[8];	// generate results
	m_mY5 = x[12];	// generate results
	
	
	mresults[0][z]= m_mX1;
	mresults[1][z]=	m_mX2;
	mresults[2][z]= m_mX3;
	mresults[3][z]= m_mX4;
	mresults[4][z]=	m_mX5;
	
	mresults[5][z]= m_mZ1;
	mresults[6][z]=	m_mZ2;
	mresults[7][z]= m_mZ3;
	mresults[8][z]= m_mZ4;
	mresults[9][z]=	m_mZ5;

	mresults[10][z]= m_mY1;
	mresults[11][z]= m_mY2;
	mresults[12][z]= m_mY3;
	mresults[13][z]= m_mY4;
	mresults[14][z]= m_mY5;
	mresults[15][z]= UR;
	}

	savemat("G:\BOOTDATAAR.FRA.in7",mresults');
	println("average results b=", meanr(mresults[1][0:]));		// compute averages of mean and std.dev
	println("average std.error results=", meanr(mresults[11][0:]));
	println("average t-value results=", meanr(mresults[6][0:]));

	
}
