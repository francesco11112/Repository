#include <oxstd.h>
#include <oxprob.h>

	
main()
{

	decl mx,amxtinv,amxtinv1,delta1a,delta2a,salt,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14;
	decl a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29;
	decl a30,a31,a32,a33,a34,a35,a36,c,c1,d,w,y,x,y1,x1,b1,p,i,e,e1,e2,e3,o,b,t1,t2,q1,q2,j,Lii,w2,p2,R2,R,Ra,Rb,Rc,Rd,Re; 
	decl mz = zeros(1656,3);
	decl my = zeros(1656,3);
	decl mw,m,f,g,M,P,N,z,zzz,t_star1,t_star2,m_mX1,m_mX2,m_mY1,m_mY2,m_mZ1,m_mZ2;
	
	decl k1,k2,k3,ystar,xstar,bstar,amxtxinv;
	decl mresults = zeros(6,5000);
	decl tstar = zeros(2,5000);
	
	decl s1 = zeros(1656,1);
	decl s2 = zeros(1656,1);
	decl s3 = zeros(1656,1);
	decl mz1 = zeros(1656,1);
	decl mz2 = zeros(1656,1);
							 
	decl mz1a = zeros(1656,1);
	decl mz1b = zeros(1656,1);
	decl mz1c = zeros(1656,1);
	decl mz1d = zeros(1656,1);
	decl mz1e = zeros(1656,1);
	decl mz1f = zeros(1656,1);

	
	decl mz2a = zeros(1656,1);
	decl mz2b = zeros(1656,1);
	decl mz2c = zeros(1656,1);
	decl mz2d = zeros(1656,1);
	decl mz2e = zeros(1656,1);
	decl mz2f = zeros(1656,1);


	
	mx = loadmat("G:\\CH4.KAO12.TESTDATA3.in7");

	decl delta1 = (mx[0:][12]-lag0(mx[0:][12],1));
  	decl delta2 = (mx[0:][13]-lag0(mx[0:][13],1));
	
	
	
	
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
	a19 = mx[0:][19];
	a20 = mx[0:][20];
	a21 = mx[0:][21];
  	a22 = mx[0:][22];
	a23 = mx[0:][23];
	a24 = mx[0:][24];
	a25 = mx[0:][25];
	a26 = mx[0:][26];
	a27 = mx[0:][27];
  	a28 = mx[0:][28];


	
	
	y = mx[0:][14];
	x = mx[0:][0:13]~mx[0:][15]~mx[0:][19]~mx[0:][22]~mx[0:][26];

	olsc(y,x,&b,&amxtinv);
	c = y - x*b;
	d = c'c/1656 + 2/1656*((1-1/11)*c'(lag0(c,1))+(1-2/11)*c'(lag0(c,2))+(1-3/11)*c'(lag0(c,3))+(1-4/11)*c'(lag0(c,4))+(1-5/11)*c'(lag0(c,5))+(1-6/11)*c'(lag0(c,6))+(1-7/11)*c'(lag0(c,7))+(1-8/11)*c'(lag0(c,8))+(1-9/11)*c'(lag0(c,9))+(1-10/11)*c'(lag0(c,10)));
	w = sqrt(d)*sqrt(amxtinv);
	p = diagonal(w);	
	q1 = p';
	t1 = b./q1;
	Ra = c'c;
	Rb = y'y;
	R = Ra/Rb;
	R2 = 1 - R;
	Rc = c'lag0(c,1);
	Rd = Ra/Rc;
	Re = 1668*Rd;
	println("R2=",R2 ,"b=",b,"t1=",t1,"q1=",q1,"Re=",Re);
	}
						 
	

	for (zzz=0; zzz<5000; ++zzz)
	{
	y1 = c;							 // autoregressive residuals follow AR(1) process
	x1 = (lag0(c,1));
	olsc(y1,x1,&b1,&amxtinv1);		// perform OLS obtain autoregression coefficient, eg rho
	e2 = y1 - x1*b1;
	         
    delta1a= (delta1 -meanc(delta1));  //  recentre residuals                     
	delta2a= (delta2 -meanc(delta2));   //  recentre residuals
	e3 = (e2 - meanc(e2));				 //  recentre residuals
	mw =e3~delta1a~delta2a;				 // *** bootstrap pairs of residuals ***
	mw[0][0:] = 0;				  	
	         // create deterministic variables in the database
                                        // formulate the model
	M = mx[0:][29];

	N = M[ ranu(1,1656) * rows(M) ][];
	
	P = N';
	
	
	for (z=0; z<1655; ++z)
	{
	my[z][0:]=mw[M[z]][0:];
	mz[z][0:]=mw[P[z]][0:];
					  	
	}


		

	s1[0]=mx[0][12];
	s2[0]=mx[0][13];
	
	for	(k1=0; k1<1655; ++k1) 
	{

	s1[k1+1]=s1[k1]+mz[k1+1][1];
	
	}

	for	(k2=0; k2<1655; ++k2) 
	{

	s2[k2+1]=s2[k2]+mz[k2+1][2];
	
	}

	s3[0]=e2[0];				// initialise variable
		
	for	(k3=0; k3<1655; ++k3) 	   // ***recursive bootstrap*** for AR(1) residuals
	{

	s3[k3+1]=s3[k3]*b1+mz[k3+1][0];	   // new bootstrapped AR(1) residuals
	
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

	
	
	ystar = (mx[0:][0]*2.9993)+(mx[0:][1]*2.3314)+(mx[0:][2]*(2.0769))+(mx[0:][3]*4.7774)+(mx[0:][4]*3.7934)+(mx[0:][5]*5.6889)+(mx[0:][6]*1.1449)+(mx[0:][7]*(0.61307))+(mx[0:][8]*2.1918)+(mx[0:][9]*5.1575)+(mx[0:][10]*0.95795)+(mx[0:][11]*5.9359)+(s1*1.0548)+(s2*(-1.0920))+(mz1*(-0.19294))+(mz1d*(-0.10380))+(mz2*0.41746)+(mz2d*0.27360)+ s3;

	
	
	xstar= mx[0:][0:11]~s1~s2~mz1~mz1d~mz2~mz2d;
	
	
	olsc(ystar,xstar,&bstar,&amxtxinv);
	e1 = ystar - (xstar*bstar);
	i = e1'e1/1656 + (2/1656)*((10/11)*e1'(lag0(e1,1))+(9/11)*e1'(lag0(e1,2))+(8/11)*e1'(lag0(e1,3))+(7/11)*e1'(lag0(e1,4))+(6/11)*e1'(lag0(e1,5))+(5/11)*e1'(lag0(e1,6))+(4/11)*e1'(lag0(e1,7))+(3/11)*e1'(lag0(e1,8))+(2/11)*e1'(lag0(e1,9))+(1/11)*e1'(lag0(e1,10)));
	j = sqrt(i)*sqrt(amxtxinv);
	o = diagonal(j);	
	q2 = o';
	t2 = bstar./q2;
	t_star1 = (bstar[12]-1.0548)/q2[12];	//	***bootstrap-t statistics***
	t_star2 = (bstar[13]+1.0920)/q2[13];	//	***bootstrap-t statistics***


	
	m_mX1 = bstar[12];		// generate results
	m_mX2 = bstar[13];
	m_mY1 = t2[12];   // generate results
	m_mY2 = t2[13];
	m_mZ1 = q2[12];	// generate results
	m_mZ2 = q2[13];
	      
	mresults[0][zzz]= m_mX1;
	mresults[1][zzz]= m_mX2;
	mresults[2][zzz]= m_mY1;
	mresults[3][zzz]= m_mY2;
	mresults[4][zzz]= m_mZ1;
	mresults[5][zzz]= m_mZ2;

	tstar[0][zzz]= t_star1;		  // simulation
	tstar[1][zzz]= t_star2;	
	}
	savemat("G:\TextDOLSChaptertest1.in7",mresults');
	savemat("G:\TextDOLSChaptertstar4.in7",tstar');
	println("average results b1=", meanr(mresults[0][0:]),"average results b2=", meanr(mresults[1][0:]));		// compute averages of mean and std.dev
	println("average t-value results b1=", meanr(mresults[2][0:]),"average t-value results b2=", meanr(mresults[3][0:]));
	println("average std.error results b1=", meanr(mresults[4][0:]),"average std.error results b2=", meanr(mresults[5][0:]));
	
	salt = sortr(mresults[2][0:]);
	println("90%quantile=", salt[4500],"10%quantile=", salt[500]);
	println("95%quantile=", salt[4750],"5%quantile=", salt[250]);
	println(quant(<0.99,0.975,0.95,0.9,0.8,0.5,0.2,0.1,0.05,0.025,0.01>,4999));
	println(quantiler(mresults[2][0:],<0.99,0.975,0.95,0.9,0.8,0.5,0.2,0.1,0.05,0.025,0.01>));
	
}

	   
	