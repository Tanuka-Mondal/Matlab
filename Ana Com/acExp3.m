clc
close all;
clear all;
fc=input('Enter the frequency of carrier signal: ');
Tc=1/fc;
Lc=100*Tc;
Ec=input('Enter the amplitude of carrier signal: ');
tc=0:.001*Lc:Lc;
Sc=cos(2*pi*fc*tc);

fm=input('Enter the frequency of message signal: ');
Tm=1/fm;
Lm=10*Tm;
ts=.001*Lm;
fs=1/ts;
tm=0:ts:Lm;
Sm= cos(2*pi*fm*tm);

m(1)=0.1;
Amp_Sm=[];
a=[];
for i=1:1:9
    x=m(i);
    Em=x*Ec;
    Amp_Sm=[Amp_Sm;Em];
    e=Ec*(1+x.*Sm);
    AM=e.*Sc ;   
    a=[a;AM];
    m(i+1)=m(i)+0.15;
end
a1=a(1,:);
a2=a(2,:);
a3=a(3,:);
a4=a(4,:);
a5=a(5,:);
a6=a(6,:);
a7=a(7,:);
a8=a(8,:);
a9=a(9,:);

figure()
subplot(3,1,1)
plot(tm,a1,'r','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','b','fontweight','bold','fontsize',14);
title('AM Signal of mi 0.10','fontweight','bold','fontsize',14);
subplot(3,1,2)
plot(tm,a2,'c','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','b','fontweight','bold','fontsize',14);
title('AM Signal of mi 0.25','fontweight','bold','fontsize',14);
subplot(3,1,3)
plot(tm,a3,'k','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','b','fontweight','bold','fontsize',14);
title('AM Signal of mi 0.40','fontweight','bold','fontsize',14);
figure()
subplot(3,1,1)
plot(tm,a4,'g','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','b','fontweight','bold','fontsize',14);
title('AM Signal of mi 0.55','fontweight','bold','fontsize',14);
subplot(3,1,2)
plot(tm,a5,'y','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','b','fontweight','bold','fontsize',14);
title('AM Signal of mi 0.70','fontweight','bold','fontsize',14);
subplot(3,1,3)
plot(tm,a6,'b','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','b','fontweight','bold','fontsize',14);
title('AM Signal of mi 0.85','fontweight','bold','fontsize',14);
figure()
subplot(3,1,1)
plot(tm,a7,'m','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','b','fontweight','bold','fontsize',14);
title('AM Signal of mi 1.00','fontweight','bold','fontsize',14);
subplot(3,1,2)
plot(tm,a8,'b','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','b','fontweight','bold','fontsize',14);
title('AM Signal of mi 1.15','fontweight','bold','fontsize',14);
subplot(3,1,3)
plot(tm,a9,'r','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','b','fontweight','bold','fontsize',14);
title('AM Signal of mi 1.30','fontweight','bold','fontsize',14);
