#include <oxstd.h>
#include <oxdraw.h>
#include <oxprob.h>

						//   JACKKNIFE REGRESSION
main()
{

	decl mx,amxtinv,salt,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14;		 // initialising variables
	decl a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29;
	decl a30,a31,a32,a33,a34,a35,a36,c,d,w,y,x,p,i,e,e1,o,b,t1,t2,q1,q2,j; 		   // initialising variables

	decl m,f,g,M,P,N,z,zzz,m_mX1,m_mX2,m_mY1,m_mY2,m_mZ1,m_mZ2;					   // initialising variables
	
	decl k1,k2,ystar,xstar,bstar,amxtxinv;
	decl mresults = zeros(6,1655);						   // initialising variables
	decl mw = zeros(1655,36);							    // initialising variables
	
	mx = loadmat("G:\\CH4.KAO12.TESTDATA3.in7");			// loading data ie dummy variables p_t p^*_t and delta p_t, delta p^*_t, etc
	
	{
	a0 = mx[0:][0];
	a1 = mx[0:][1];
  	a2 = mx[0:][2];
	a3 = mx[0:][3];
	a4 = mx[0:][4];
	a5 = mx[0:][5];
	a6 = mx[0:][6];						// create deterministic variables in the database
	a7 = mx[0:][7];
  	a8 = mx[0:][8];
	a9 = mx[0:][9];
	a10 = mx[0:][10];					// load Ox matrix with dummies and variables
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
	
 

	for (zzz=0; zzz<1654; ++zzz)	  // start Jackknife simulation 
	{
					  	

	y = mx[0:zzz][14]|mx[zzz+2:][14];											   // dependent variables 
	x = (mx[0:zzz][0:13]~mx[0:zzz][15:28])|(mx[zzz+2:][0:13]~mx[zzz+2:][15:28]);   // independent variables 
	
	olsc(y,x,&b,&amxtinv);			 // perform OLS	 get beta
	c = y - x*b;					  // get residuals
	d = c'c/(1656-28);
	w = sqrt(d)*sqrt(amxtinv);		  // compute standard errors
	p = diagonal(w);	
	q1 = p';						 // compute standard errors
	t1 = b./q1;						  // compute t-statistics
	
	
	m_mX1 = b[12];		// generate results
	m_mX2 = b[13];		  // simulation
	m_mY1 = t1[12];   // generate results
	m_mY2 = t1[13];	   // simulation
	m_mZ1 = q1[12];	// generate results
	m_mZ2 = q1[13];
	      
	mresults[0][zzz]= m_mX1;	 // generate results
	mresults[1][zzz]= m_mX2;
	mresults[2][zzz]= m_mY1;	   // simulation
	mresults[3][zzz]= m_mY2;	 // generate results
	mresults[4][zzz]= m_mZ1;	 // simulation
	mresults[5][zzz]= m_mZ2;	 // generate results
	}
	savemat("G:\CH4.TextDOLStest.in7",mresults');		// save results												// compute averages of mean and std.dev
	println("average results b1=", meanr(mresults[0][0:]),"average results b2=", meanr(mresults[1][0:]));						   // print results
	println("average t-value results b1=", meanr(mresults[2][0:]),"average t-value results b2=", meanr(mresults[3][0:]));	  	// compute averages of mean and std.dev
	println("average std.error results b1=", meanr(mresults[4][0:]),"average std.error results b2=", meanr(mresults[5][0:]));	    // print results
	
	}
	
}