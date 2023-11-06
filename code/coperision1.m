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

%teyer proposed
%Eicnpro1=N*(Pr1icn(1)*Tw+Pr3icn*Tw)+(

%figure; plot(64,Eip);plot(96,Eip);plot(128,Eip);plot(192,Eip); plot(256,Eip); plot(384,Eip); plot(512,Eip);

figure; plot (64,Eip,'r*',96,Eip,'r*',128,Eip,'r*',192,Eip,'r*',256,Eip,'r*');
hold on;plot (64,Eicn1,'-o',96,Eicn2,'-o',128,Eicn3,'-o',192,Eicn4,'-o',256,Eicn5,'-o');


%x=[ 1 3 4 5];
%y= [3 4 2 5];
%figure; plot(x,y,'r');
%y2=2*y;
%hold on; plot(x,y2); hold off;