% IP energy consumption by ip based ntwork%
M=20; 

N1=10; N2=15;
N=N1+N2;
Tw=10;
Pipr1=13 ; Papipr2=10.2;
Ps1=68;Ps2=20;Ps3=731;
Es=Tw*(Ps1+Ps2+Ps3);
Eip=N*Pipr1*Tw+N2*Papipr2*Tw+M*Es; 

%ICN energy consuption%

Pr1icn=[13.5 14 15 15.5 16];
Pr2icn=[119.6 120 120.2 120.4 120.6];
Pr3icn=0.053;
Pr2icnapbase=[12.4 13 13.4 13.6 13.8];
Pr1icnapmax=[13.3 13.9 14.3 14.5 14.7];
Eicn1=N*(Pr1icn(1)*Tw+Pr3icn*Tw)+N1*Pr2icn(1)*Tw+N2*Pr2icnapbase(1)*Tw+M*Es;
Eicn2=N*(Pr1icn(2)*Tw+Pr3icn*Tw)+N1*Pr2icn(2)*Tw+N2*Pr2icnapbase(2)*Tw+M*Es;
Eicn3=N*(Pr1icn(3)*Tw+Pr3icn*Tw)+N1*Pr2icn(3)*Tw+N2*Pr2icnapbase(3)*Tw+M*Es;
Eicn4=N*(Pr1icn(4)*Tw+Pr3icn*Tw)+N1*Pr2icn(4)*Tw+N2*Pr2icnapbase(4)*Tw+M*Es;
Eicn5=N*(Pr1icn(5)*Tw+Pr3icn*Tw)+N1*Pr2icn(5)*Tw+N2*Pr2icnapbase(5)*Tw+M*Es;

%figure; plot(64,Eip);plot(96,Eip);plot(128,Eip);plot(192,Eip); plot(256,Eip); plot(384,Eip); plot(512,Eip);
%optimized model
Tork=5;
Tor1=3;
Td1=0.001;
Td2=0.001;
%optimized Er-ICN,rk
optEricn1=N*(Pr1icn(1)*Tw+Pr3icn*Tw)+(0.7*N1*0.3*Pr2icn(1)*Tork)+(0.3*N1*0.3*Pr2icn(1)*Td1)+N2*(Pr2icnapbase(1)*(Tw-Tor1));
optEricn2=N*(Pr1icn(2)*Tw+Pr3icn*Tw)+(0.7*N1*0.3*Pr2icn(2)*Tork)+(0.3*N1*0.3*Pr2icn(2)*Td1)+N2*(Pr2icnapbase(2)*(Tw-Tor1));
optEricn3=N*(Pr1icn(3)*Tw+Pr3icn*Tw)+(0.7*N1*0.3*Pr2icn(3)*Tork)+(0.3*N1*0.3*Pr2icn(3)*Td1)+N2*(Pr2icnapbase(3)*(Tw-Tor1));
optEricn4=N*(Pr1icn(4)*Tw+Pr3icn*Tw)+(0.7*N1*0.3*Pr2icn(4)*Tork)+(0.3*N1*0.3*Pr2icn(4)*Td1)+N2*(Pr2icnapbase(4)*(Tw-Tor1));
optEricn5=N*(Pr1icn(5)*Tw+Pr3icn*Tw)+(0.7*N1*0.3*Pr2icn(5)*Tork)+(0.3*N1*0.3*Pr2icn(5)*Td1)+N2*(Pr2icnapbase(5)*(Tw-Tor1));

%Optimized Es-ICN,sj
Tosj=5;
Xsj=1;
optEsicn=M*(Ps1*Tw+Ps2*Tw)+0.7*M*(0.4*Ps3*Tosj)+0.3*M*Ps3*(Tosj-Xsj*Td2);
%opt green ICN propose of paper
Eicnpro1=optEricn1+optEsicn;
Eicnpro2=optEricn2+optEsicn;
Eicnpro3=optEricn3+optEsicn;
Eicnpro4=optEricn4+optEsicn;
Eicnpro5=optEricn5+optEsicn;

%optimized my proposed Er-ICN,rk
XoptEricn1=N*(Pr1icn(1)*log2(Tw)+Pr3icn*log2(Tw))+(0.7*N1*0.3*Pr2icn(1)*log2(Tork))+(0.3*N1*0.3*Pr2icn(1)*Td1)+N2*(Pr2icnapbase(1)*(log2(Tw)-Tor1));
XoptEricn2=N*(Pr1icn(2)*log2(Tw)+Pr3icn*log2(Tw))+(0.7*N1*0.3*Pr2icn(2)*log2(Tork))+(0.3*N1*0.3*Pr2icn(2)*Td1)+N2*(Pr2icnapbase(2)*(log2(Tw)-Tor1));
XoptEricn3=N*(Pr1icn(3)*log2(Tw)+Pr3icn*log2(Tw))+(0.7*N1*0.3*Pr2icn(3)*log2(Tork))+(0.3*N1*0.3*Pr2icn(3)*Td1)+N2*(Pr2icnapbase(3)*(log2(Tw)-Tor1));
XoptEricn4=N*(Pr1icn(4)*log2(Tw)+Pr3icn*log2(Tw))+(0.7*N1*0.3*Pr2icn(4)*log2(Tork))+(0.3*N1*0.3*Pr2icn(4)*Td1)+N2*(Pr2icnapbase(4)*(log2(Tw)-Tor1));
XoptEricn5=N*(Pr1icn(5)*log2(Tw)+Pr3icn*log2(Tw))+(0.7*N1*0.3*Pr2icn(5)*log2(Tork))+(0.3*N1*0.3*Pr2icn(5)*Td1)+N2*(Pr2icnapbase(5)*(log2(Tw)-Tor1));

XoptEsicn=M*(Ps1*log2(Tw)+Ps2*log2(Tw))+0.7*M*(0.4*Ps3*log2(Tosj))+0.3*M*Ps3*(log2(Tosj)-Xsj*Td2);

%opt MY X-green ICN propose of paper
XEicnpro1=XoptEricn1+XoptEsicn;
XEicnpro2=XoptEricn2+XoptEsicn;
XEicnpro3=XoptEricn3+XoptEsicn;
XEicnpro4=XoptEricn4+XoptEsicn;
XEicnpro5=XoptEricn5+XoptEsicn;
%savin energy consumtion ratio youtube
Eip_64=Eip-XEicnpro1;
Eip_96=Eip-XEicnpro2;
Eip_128=Eip-XEicnpro3;
Eip_192=Eip-XEicnpro4;
Eip_256=Eip-XEicnpro5;

figure; plot (64,Eip_64,'b--^',96,Eip_96,'b--^',128,Eip_128,'b--^',192,Eip_192,'b--^',256,Eip_256,'b--^');
%hold on;plot (64,Eicn1,'r--o',96,Eicn2,'r--o',128,Eicn3,'r--o',192,Eicn4,'r--o',256,Eicn5,'r--o');
%hold on;plot (64,XEicnpro1_64,'r--^',96,XEicnpro2_96,'r--^',128,XEicnpro3_128,'r--^',192,XEicnpro4_192,'r--^',256,XEicnpro5_256,'r--^');
%hold on;plot (64,XEicnpro1,'b--o',96,XEicnpro2,'b--o',128,XEicnpro3,'b--o',192,XEicnpro4,'b--o',256,XEicnpro5,'b--o');

%x=[ 1 3 4 5];
%y= [3 4 2 5];
%figure; plot(x,y,'r');
%y2=2*y;
%hold on; plot(x,y2); hold off;