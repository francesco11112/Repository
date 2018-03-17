#include <oxstd.h>
#include <oxprob.h>

	
main()
{

	decl mx,amxtinv,amxtinv1,delta1a,delta2a,salt,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14;
	decl a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29;
	decl a30,a31,a32,a33,a34,a35,a36,c,c1,d,w,y,x,y1,x1,b1,p,i,e,e1,e2,e3,o,b,t1,t2,q1,q2,j,Lii,w2,p2,R2,R,Ra,Rb; 
	
	decl mw,m,f,g,M,P,N,z,zzz,t_star1,t_star2,m_mX1,m_mX2,m_mY1,m_mY2,m_mZ1,m_mZ2;
	
	decl k1,k2,k3,ystar,xstar,bstar,amxtxinv;
	
	
	mx = loadmat("G:\\CH4.KAO12.TESTDATA3.in7");

	decl delta1 = (mx[0:][12]-lag0(mx[0:][12],1));
  	decl delta2 = (mx[0:][13]-lag0(mx[0:][13],1));
	
	decl t3,t4,res5,res6,DW,Fstat1,Fstat2,Fstat,pval1,pval2; 
	decl res1,res2,res3,res4;
	
	
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
	x = mx[0:][0:13]~mx[0:][15:28];

	olsc(y,x,&b,&amxtinv);
	c = y - x*b;
	d = c'c/1656 + 2/1656*((1-1/11)*c'(lag0(c,1))+(1-2/11)*c'(lag0(c,2))+(1-3/11)*c'(lag0(c,3))+(1-4/11)*c'(lag0(c,4))+(1-5/11)*c'(lag0(c,5))+(1-6/11)*c'(lag0(c,6))+(1-7/11)*c'(lag0(c,7))+(1-8/11)*c'(lag0(c,8))+(1-9/11)*c'(lag0(c,9))+(1-10/11)*c'(lag0(c,10)));
	w = sqrt(d)*sqrt(amxtinv);
	p = diagonal(w);	
	Ra = c'c;
	Rb = y'y;
	R = Ra/Rb;
	R2 = 1 - R;
	DW=(c-lag0(c,1))'(c-lag0(c,1))/Ra;
	Fstat1=R2*(1656-19);
	Fstat2=(1-R2)*18;
	Fstat=Fstat1/Fstat2;
	println("Fstatistic=",Fstat);
	println("R2=",R2);
	println("D.W.=",DW);
	q2 = p';
	t2 = b./q2;
	t3 = t2.^2;
	t4 = sqrt(t3);
	pval1 = 2*tailt(t4,1637);
	pval2 = tailf(Fstat,18,1637);
	println("b=",b, "t-stat=",t2,"pval1=",pval1,"pval2=",pval2);
	
	
	}
						 
	

	
}

	   
	