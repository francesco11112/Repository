#include <oxstd.h>
#include <oxdraw.h>
#include <oxprob.h>

	
main()
{

	decl mx,amxtinv,amxtinv1,delta1a,delta2a,salt,a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14;
	decl a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29;
	decl a30,a31,a32,a33,a34,a35,a36,c,d,w,y,x,y1,x1,b1,p,i,e,e1,e2,e3,o,b,t1,t2,q1,q2,j,Lii,w2,p2,R2,R,Ra,Rb; 
	decl mz = zeros(1656,3);
	decl my = zeros(1656,3);
	decl mw,T,q,amx1inv,amx2inv,DF1,DF2,DF3,DF4,DF5,t,m,f,g,M,P,N,z,zzz,t_star1,t_star2,m_mX1,m_mX2,m_mY1,m_mY2,m_mZ1,m_mZ2;
	
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
	
	decl t3,t4,res5,res6,DW,Fstat1,Fstat2,Fstat,pval1,pval2; 
	decl res1,res2,res3,res4,cc,tt,c1,c2,c3,c4,c5,F,XC;
	
	
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
	pval1 = tailt(t4,1637);
	pval2 = tailf(Fstat,18,1637);
	println("b=",b, "t-stat=",t2,"pval1=",pval1,"pval2=",pval2);
	olsc(c,lag0(c,1),&f,&amx1inv);
	g=c-lag0(c,1)*f;
	DF1=(4.472*138*(f-1)+3*4.472)/3.193;
	println("KAO DF1=",DF1);
	d=g'g/(1656-1);
	w=sqrt(d)*sqrt(amx1inv);
	p=diagonal(w);
	q=p';
	t=f/q;
	DF2=1.118*t+1.369*20;
	println("KAO DF2=",DF2);
	cc=diff0(c,1);
	c1=lag0(cc,1);
	c2=lag0(c1,2);
	c3=lag0(c1,3);
	c4=lag0(c1,4);
	XC=lag0(c,1)~c1~c2~c3~c4;
	olsc(c,XC,&F,&amx2inv);
	c5=c-XC*F;
	res1=c5'c5/(1656-5);
	res2=sqrt(res1)*sqrt(amx2inv);
	res3=diagonal(res2);
	res4=res3';
	tt=F./res4;
	println("t1-stat=",t,"lambda=",f,"t2-stat=",tt[0]);
	DF3=(3.464*138*(f-1)+(3*3.464*0.055181/0.16366))/sqrt(3+(7.2*0.00304/0.0267));
	println("KAO DF3=",DF3);	
	DF4= t + (8.4852*0.2349/2*0.4045)/sqrt((0.16366/2*0.055181)+(3*0.055181/10*0.16366));
	DF5=tt[0]+	(8.4852*0.2349/2*0.4045)/sqrt((0.16366/2*0.055181)+(3*0.055181/10*0.16366));
	println("KAO DF4=",DF4,"KAO DF5=",DF5);
	}
						 
	

	
}

	   
	