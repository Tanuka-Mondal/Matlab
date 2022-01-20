clc;
clear all;
close all;

fc = input('Frequency of carrier signal: ');
Tc = 1/fc;
Lc = 100*Tc;
Ec = input('Amplitude of carrier signal: ');
tc = 0:0.001*Lc:Lc;
c = Ec*cos(2*pi*fc*tc); %carrier signal
subplot(2,1,1);
plot(tc,c,'m','linewidth',1.5)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','b','fontweight','bold','fontsize',14);
title('Carrier Signal','fontweight','bold','fontsize',14);

fm = input('Frequency of message signal: ');
Tm = 1/fm;
Lm = 10*Tm;
Em = input('Amplitude of message signal: ');
ts = 0.001*Lm;
fs = 1/ts;
tm = 0:0.001*Lm:Lm;
m = Em*cos(2*pi*fm*tm); %message signal
subplot(2,1,2);
plot(tm,m,'g','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','b','fontweight','bold','fontsize',14);
title('Message Signal','fontweight','bold','fontsize',14);