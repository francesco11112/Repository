#include <oxstd.h>
#include <oxdraw.h>
#include <oxprob.h>

	

	
main()
{

	decl mx,amxtinv,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14;
	decl a15,a16,a17,a18,c,c1,d,w,y,x,p,i,e,o,b,t1,t2,q1,q2,j,R,R2,Ra,Rb; 
	decl mz = zeros(138,3);
	decl my = zeros(138,3);
	decl mw,m,f,g,M,P,N,z,zzz,m_mX1,m_mX2,m_mY1,m_mY2,m_mZ1,m_mZ2;
	
	decl k1,k2,ystar,xstar,bstar,amxtxinv;
	decl mresults = zeros(6,100);
	
	decl s1 = zeros(138,1);
	decl s2 = zeros(138,1);
	decl mz1 = zeros(138,1);
	decl mz2 = zeros(138,1);
							 
	decl mz1a = zeros(138,1);
	decl mz1b = zeros(138,1);
	decl mz1c = zeros(138,1);
	decl mz1d = zeros(138,1);
	decl mz1e = zeros(138,1);
	decl mz1f = zeros(138,1);

	
	decl mz2a = zeros(138,1);
	decl mz2b = zeros(138,1);
	decl mz2c = zeros(138,1);
	decl mz2d = zeros(138,1);
	decl mz2e = zeros(138,1);
	decl mz2f = zeros(138,1);


	
	mx = loadmat("G:\\DOLSSPAI1.in7");

	decl delta1 = (mx[0:][1]-lag0(mx[0:][1],1));
  	decl delta2 = (mx[0:][2]-lag0(mx[0:][2],1));
	
	
	
	
	{
	a0 = mx[0:][0];
	a1 = mx[0:][1];
  	a2 = mx[0:][2];
	a3 = mx[0:][3];
	a4 = mx[0:][4];
	a5 = mx[0:][5];
	a6 = mx[0:][6];
	a7 = mx[0:][7];
  	a8 = mx[0:][8];
	a9 = mx[0:][9];
	a10 = mx[0:][10];
	a11 = mx[0:][11];
  	a12 = mx[0:][12];
	a13 = mx[0:][13];
	a14 = mx[0:][14];
	a15 = mx[0:][15];
	a16 = mx[0:][16];
	a17 = mx[0:][17];
  	a18 = mx[0:][18];
		
	y = mx[0:][0];
	x = mx[0:][17]~mx[0:][1:2]~mx[0:][12];

	
	olsc(y,x,&b,&amxtinv);
	c = y - x*b;
	d = c'c/(138-6);
	w = sqrt(d)*sqrt(amxtinv);
	p = diagonal(w);	
	q1 = p';
	t1 = b./q1;
	Ra= c'c;
	Rb = y'y;
	R = Ra/Rb;
	R2 = 1 - R;
	println("b1=",b,"p=",p,"t1=",t1,"R2=",R2);
	}
	
	for (zzz=0; zzz<100; ++zzz)
	{
					  	
	

	
		
		
   
	         // create deterministic variables in the database
                                        // formulate the model
		
	c1 = (c - meanc(c));
	mw =c~delta1~delta2;
	mw[0][0:] = 0;
	M = mx[0:][18];
   	N = M[ ranu(1,138) * rows(M) ][];
 	P = N';
	
	
	
	for (z=0; z<137; ++z)
	{
	my[z][0:]= mw[M[z]][0:];
	mz[z][0:]= mw[P[z]][0:];
					  	
	}


		

	s1[0]=mx[0][1];
	s2[0]=mx[0][2];
	
	for	(k1=0; k1<137; ++k1) 
	{

	s1[k1+1]=s1[k1]+mz[k1+1][1];
	
	}

	for	(k2=0; k2<137; ++k2) 
	{

	s2[k2+1]=s2[k2]+mz[k2+1][2];
	
	}

	mz1 = (s1 -lag0(s1,1));
	mz2 = (s2 -lag0(s2,1));

	mz1a=mz1[1:][]|0;
	mz1b=mz1[2:][]|0|0;
	mz1c=mz1[3:][]|0|0|0;
	mz1d=(lag0(mz1[0:][],1));
	mz1e=(lag0(mz1[0:][],2));
	mz1f=(lag0(mz1[0:][],3));
	mz1d[0:1][0]=0;
	mz1e[0:2][0]=0;
	mz1f[0:3][0]=0;

	mz2a=mz2[1:][]|0;
	mz2b=mz2[2:][]|0|0;
	mz2c=mz2[3:][]|0|0|0;
	mz2d=(lag0(mz2[0:][],1));
	mz2e=(lag0(mz2[0:][],2));
	mz2f=(lag0(mz2[0:][],3));
	mz2d[0:1][0]=0;
	mz2e[0:2][0]=0;
	mz2f[0:3][0]=0;

	
	
	
	ystar = (mx[0:][17]*6.1016)+(s1*0.96718)+(s2*(-1.2192))+(mz2c*(-13.144))+(mz[0:][0]);
		
	xstar= mx[0:][17]~s1~s2~mz2c;
	
	
	olsc(ystar,xstar,&bstar,&amxtxinv);
	e = ystar - (xstar*bstar);
	i = e'e/(138-6);
	j = (sqrt(i))*(sqrt(amxtxinv));
	o = diagonal(j);	
	q2 = o';
	t2 = bstar./q2;

	
	m_mX1 = bstar[1];		// generate results
	m_mX2 = bstar[2];
	m_mY1 = t2[1];   // generate results
	m_mY2 = t2[2];
	m_mZ1 = q2[1];	// generate results
	m_mZ2 = q2[2];
	      
	mresults[0][zzz]= m_mX1;
	mresults[1][zzz]= m_mX2;
	mresults[2][zzz]= m_mY1;
	mresults[3][zzz]= m_mY2;
	mresults[4][zzz]= m_mZ1;
	mresults[5][zzz]= m_mZ2;
	}

	savemat("G:\TextDOLSSPAI.in7",mresults');
	
	println("average results b1=", meanr(mresults[0][0:]),"average results b2=", meanr(mresults[1][0:]));		// compute averages of mean and std.dev
	println("average t-value results b1=", meanr(mresults[2][0:]),"average t-value results b2=", meanr(mresults[3][0:]));
	println("average std.error results b1=", meanr(mresults[4][0:]),"average std.error results b2=", meanr(mresults[5][0:]));
	
	
}	