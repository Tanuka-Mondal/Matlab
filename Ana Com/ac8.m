clc;
clear all;
close all;
t=0:0.001:1;
A=5;
fm=input('Message frequency='); 
fc=input('Carrier frequency='); 
m=input('Modulation Index='); 

Sm=A*sin(2*pi*fm*t); 
subplot(3,1,1); 
plot(t,Sm,'r');
xlabel('Time');
ylabel('Amplitude');
title('Message Signal');

Sc=A*sin(2*pi*fc*t);
subplot(3,1,2);
plot(t,Sc,'c');
xlabel('Time');
ylabel('Amplitude');
title('Carrier Signal');

Sfm=(A+m*Sm).*sin(2*pi*fc*t); 
subplot(3,1,3);
plot(t,Sfm,'g');
xlabel('Time');
ylabel('Amplitude');
title('AM Signal');