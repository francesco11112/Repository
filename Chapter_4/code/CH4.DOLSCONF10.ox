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
	decl Boot1 = zeros(5000,1);
	decl Boot2 = zeros(5000,1);
	decl Bootstar = zeros(5000,2);

	
	mx1 = loadmat("G:\CHAPTER4DOLSAUStstar1.in7");
	mx2 = loadmat("G:\CHAPTER4DOLSDENtstar1.in7");
	mx3 = loadmat("G:\CHAPTER4DOLSFRAtstar1.in7");
	mx4 = loadmat("G:\CHAPTER4DOLSGREtstar1.in7");
	mx5 = loadmat("G:\CHAPTER4DOLSICEtstar1.in7");
	mx6 = loadmat("G:\CHAPTER4DOLSMEXtstar1.in7");
	mx7 = loadmat("G:\CHAPTER4DOLSNETHtstar1.in7");
	mx8 = loadmat("G:\CHAPTER4DOLSNEWZtstar1.in7");
	mx9 = loadmat("G:\CHAPTER4DOLSNORtstar1.in7");
	mx10 = loadmat("G:\CHAPTER4DOLSSPAItstar1.in7");
	mx11 = loadmat("G:\CHAPTER4DOLSSWIZtstar1.in7");
	mx12 = loadmat("G:\CHAPTER4DOLSTURtstar1.in7");

	
	my1 = mx1[0:4999][0]~mx2[0:4999][0]~mx3[0:4999][0]~mx4[0:4999][0]~mx5[0:4999][0]~mx6[0:4999][0]~mx7[0:4999][0]~mx8[0:4999][0]~mx9[0:4999][0]~mx10[0:4999][0]~mx11[0:4999][0]~mx12[0:4999][0];
	my2 = mx1[0:4999][1]~mx2[0:4999][1]~mx3[0:4999][1]~mx4[0:4999][1]~mx5[0:4999][1]~mx6[0:4999][1]~mx7[0:4999][1]~mx8[0:4999][1]~mx9[0:4999][1]~mx10[0:4999][1]~mx11[0:4999][1]~mx12[0:4999][1];
	
	
	Boot1 = meanr(my1);
	Boot2 = meanr(my2);

	
	Bootstar=Boot1~Boot2;	  // enter code
	savemat("G:\\CH4.TextDOLS4.in7",Bootstar);
	println(quantilec(Bootstar,<0.99,0.975,0.95,0.9,0.8,0.5,0.2,0.1,0.05,0.025,0.01>));

}
