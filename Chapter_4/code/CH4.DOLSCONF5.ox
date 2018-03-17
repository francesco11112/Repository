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
	decl mx13 = zeros(5000,6);
	decl mx14 = zeros(5000,6);
	decl mx15 = zeros(5000,6);
	decl mx16 = zeros(5000,6);
	decl mx17 = zeros(5000,6);
	decl mx18 = zeros(5000,6);
	decl mx19 = zeros(5000,6);
	decl mx20 = zeros(5000,6);
	decl my1 = zeros(5000,20);
	decl my2 = zeros(5000,20);
	decl my3 = zeros(5000,20);
	decl my4 = zeros(5000,20);
	decl my5 = zeros(5000,20);
	decl Boot1 = zeros(5000,1);
	decl Boot2 = zeros(5000,1);
	decl Boot3 = zeros(5000,1);
	decl Boot4 = zeros(5000,1);
	decl Boot5 = zeros(5000,1);
	decl Bootstar = zeros(5000,5);

	
	mx1 = loadmat("G:\BOOTDATAMB.AUS.in7");
	mx2 = loadmat("G:\BOOTDATAMB.BEL.in7");
	mx3 = loadmat("G:\BOOTDATAMB.CAN.in7");
	mx4 = loadmat("G:\BOOTDATAMB.DEN.in7");
	mx5 = loadmat("G:\BOOTDATAMB.FIN.in7");
	mx6 = loadmat("G:\BOOTDATAMB.FRA.in7");
	mx7 = loadmat("G:\BOOTDATAMB.GERM.in7");
	mx8 = loadmat("G:\BOOTDATAMB.GRE.in7");
	mx9 = loadmat("G:\BOOTDATAMB.ICE.in7");
	mx10 = loadmat("G:\BOOTDATAMB.IRE.in7");
	mx11 = loadmat("G:\BOOTDATAMB.ITALY.in7");
	mx12 = loadmat("G:\BOOTDATAMB.JAP.in7");
	mx13 = loadmat("G:\BOOTDATAMB.LUX.in7");
	mx14 = loadmat("G:\BOOTDATAMB.NOR.in7");
	mx15 = loadmat("G:\BOOTDATAMB.PORT.in7");
	mx16 = loadmat("G:\BOOTDATAMB.SPAIN.in7");
	mx17 = loadmat("G:\BOOTDATAMB.SWED.in7");
	mx18 = loadmat("G:\BOOTDATAMB.SWIZ.in7");
	mx19 = loadmat("G:\BOOTDATAMB.UK.in7");
	mx20 = loadmat("G:\BOOTDATAMB.US.in7");
	
	my1 = mx1[0:4999][0]~mx2[0:4999][0]~mx3[0:4999][0]~mx4[0:4999][0]~mx5[0:4999][0]~mx6[0:4999][0]~mx7[0:4999][0]~mx8[0:4999][0]~mx9[0:4999][0]~mx10[0:4999][0]~mx11[0:4999][0]~mx12[0:4999][0]~mx13[0:4999][0]~mx14[0:4999][0]~mx15[0:4999][0]~mx16[0:4999][0]~mx17[0:4999][0]~mx18[0:4999][0]~mx19[0:4999][0]~mx20[0:4999][0];
	my2 = mx1[0:4999][1]~mx2[0:4999][1]~mx3[0:4999][1]~mx4[0:4999][1]~mx5[0:4999][1]~mx6[0:4999][1]~mx7[0:4999][1]~mx8[0:4999][1]~mx9[0:4999][1]~mx10[0:4999][1]~mx11[0:4999][1]~mx12[0:4999][1]~mx13[0:4999][1]~mx14[0:4999][1]~mx15[0:4999][1]~mx16[0:4999][1]~mx17[0:4999][1]~mx18[0:4999][1]~mx19[0:4999][1]~mx20[0:4999][1];
	my3 = mx1[0:4999][2]~mx2[0:4999][2]~mx3[0:4999][2]~mx4[0:4999][2]~mx5[0:4999][2]~mx6[0:4999][2]~mx7[0:4999][2]~mx8[0:4999][2]~mx9[0:4999][2]~mx10[0:4999][2]~mx11[0:4999][2]~mx12[0:4999][2]~mx13[0:4999][2]~mx14[0:4999][2]~mx15[0:4999][2]~mx16[0:4999][2]~mx17[0:4999][2]~mx18[0:4999][2]~mx19[0:4999][2]~mx20[0:4999][2];
	my4 = mx1[0:4999][3]~mx2[0:4999][3]~mx3[0:4999][3]~mx4[0:4999][3]~mx5[0:4999][3]~mx6[0:4999][3]~mx7[0:4999][3]~mx8[0:4999][3]~mx9[0:4999][3]~mx10[0:4999][3]~mx11[0:4999][3]~mx12[0:4999][3]~mx13[0:4999][3]~mx14[0:4999][3]~mx15[0:4999][3]~mx16[0:4999][3]~mx17[0:4999][3]~mx18[0:4999][3]~mx19[0:4999][3]~mx20[0:4999][3];
	my5 = mx1[0:4999][4]~mx2[0:4999][4]~mx3[0:4999][4]~mx4[0:4999][4]~mx5[0:4999][4]~mx6[0:4999][4]~mx7[0:4999][4]~mx8[0:4999][4]~mx9[0:4999][4]~mx10[0:4999][4]~mx11[0:4999][4]~mx12[0:4999][4]~mx13[0:4999][4]~mx14[0:4999][4]~mx15[0:4999][4]~mx16[0:4999][4]~mx17[0:4999][4]~mx18[0:4999][4]~mx19[0:4999][4]~mx20[0:4999][4];
																																																															   
	Boot1 = meanr(my1);
	Boot2 = meanr(my2);
	Boot3 = meanr(my3);
	Boot4 = meanr(my4);	
	Boot5 = meanr(my5);

	Bootstar=Boot1~Boot2~Boot3~Boot4~Boot5;	  // enter code
	savemat("G:\\CH4.TextDOLS2.in7",Boot1);
	println(quantilec(Bootstar,<0.99,0.975,0.95,0.9,0.8,0.5,0.2,0.1,0.05,0.025,0.01>));

}
