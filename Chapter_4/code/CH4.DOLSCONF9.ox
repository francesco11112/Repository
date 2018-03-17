#include <oxstd.h>

main()
{
	decl i;
	decl mx1 = zeros(5000,6);
	decl mx2 = zeros(5000,6);
	decl mx3 = zeros(5000,6);
	decl mx4 = zeros(5000,6);
	decl mx5 = zeros(5000,6);
	decl mx6 = zeros(5000,6);
	decl mx7 = zeros(5000,6);
	decl mx8 = zeros(5000,6);
	decl mx9 = zeros(5000,6);
	decl mx10 = zeros(5000,6);
	decl mx11 = zeros(5000,6);
	decl mx12 = zeros(5000,6);
	decl my1 = zeros(5000,12);
	decl my2 = zeros(5000,12);
	decl my3 = zeros(5000,12);
	decl my4 = zeros(5000,12);
	decl my5 = zeros(5000,12);
	decl my6 = zeros(5000,12);
	decl Boot1 = zeros(5000,1);
	decl Boot2 = zeros(5000,1);
	decl Boot3 = zeros(5000,1);
	decl Boot4 = zeros(5000,1);
	decl Boot5 = zeros(5000,1);
	decl Boot6 = zeros(5000,1);
	decl Bootstar = zeros(5000,6);

	
	mx1 = loadmat("G:\CHAPTER4DOLSAUS1.in7");
	mx2 = loadmat("G:\CHAPTER4DOLSDEN1.in7");
	mx3 = loadmat("G:\CHAPTER4DOLSFRA1.in7");
	mx4 = loadmat("G:\CHAPTER4DOLSGRE1.in7");
	mx5 = loadmat("G:\CHAPTER4DOLSICE1.in7");
	mx6 = loadmat("G:\CHAPTER4DOLSMEX1.in7");
	mx7 = loadmat("G:\CHAPTER4DOLSNETH1.in7");
	mx8 = loadmat("G:\CHAPTER4DOLSNEWZ1.in7");
	mx9 = loadmat("G:\CHAPTER4DOLSNOR1.in7");
	mx10 = loadmat("G:\CHAPTER4DOLSSPAI1.in7");
	mx11 = loadmat("G:\CHAPTER4DOLSSWIZ1.in7");
	mx12 = loadmat("G:\CHAPTER4DOLSTUR1.in7");

	
	my1 = mx1[0:4999][0]~mx2[0:4999][0]~mx3[0:4999][0]~mx4[0:4999][0]~mx5[0:4999][0]~mx6[0:4999][0]~mx7[0:4999][0]~mx8[0:4999][0]~mx9[0:4999][0]~mx10[0:4999][0]~mx11[0:4999][0]~mx12[0:4999][0];
	my2 = mx1[0:4999][1]~mx2[0:4999][1]~mx3[0:4999][1]~mx4[0:4999][1]~mx5[0:4999][1]~mx6[0:4999][1]~mx7[0:4999][1]~mx8[0:4999][1]~mx9[0:4999][1]~mx10[0:4999][1]~mx11[0:4999][1]~mx12[0:4999][1];
	my3 = mx1[0:4999][2]~mx2[0:4999][2]~mx3[0:4999][2]~mx4[0:4999][2]~mx5[0:4999][2]~mx6[0:4999][2]~mx7[0:4999][2]~mx8[0:4999][2]~mx9[0:4999][2]~mx10[0:4999][2]~mx11[0:4999][2]~mx12[0:4999][2];
	my4 = mx1[0:4999][3]~mx2[0:4999][3]~mx3[0:4999][3]~mx4[0:4999][3]~mx5[0:4999][3]~mx6[0:4999][3]~mx7[0:4999][3]~mx8[0:4999][3]~mx9[0:4999][3]~mx10[0:4999][3]~mx11[0:4999][3]~mx12[0:4999][3];
	my5 = mx1[0:4999][4]~mx2[0:4999][4]~mx3[0:4999][4]~mx4[0:4999][4]~mx5[0:4999][4]~mx6[0:4999][4]~mx7[0:4999][4]~mx8[0:4999][4]~mx9[0:4999][4]~mx10[0:4999][4]~mx11[0:4999][4]~mx12[0:4999][4];
	my6 = mx1[0:4999][5]~mx2[0:4999][5]~mx3[0:4999][5]~mx4[0:4999][5]~mx5[0:4999][5]~mx6[0:4999][5]~mx7[0:4999][5]~mx8[0:4999][5]~mx9[0:4999][5]~mx10[0:4999][5]~mx11[0:4999][5]~mx12[0:4999][5];

	
	Boot1 = meanr(my1);
	Boot2 = meanr(my2);
	Boot3 = meanr(my3)*4.472136;
	Boot4 = meanr(my4)*4.472136;	
	Boot5 = meanr(my5);
	Boot6 = meanr(my6);

	
	Bootstar=Boot1~Boot2~Boot3~Boot4~Boot5~Boot6;	  // enter code
	savemat("G:\\CH4.TextDOLS3.in7",Bootstar);
	println(quantilec(Bootstar,<0.99,0.975,0.95,0.9,0.8,0.5,0.2,0.1,0.05,0.025,0.01>));

}
