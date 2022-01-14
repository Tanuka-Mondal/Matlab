clc
clear all
close all
f1=1000;
t1=0:1/(20*f1):20/f1;
f2=5000;
t2=0:1/(20*f2):20/f2;
y1=2*cos(2*pi*f1*t1);
y2=2*cos(2*pi*f2*t2);
subplot(3,1,1)
plot(t1,y1,'c')
title('cos wave 1')
xlabel('Time')
ylabel('Amplitude')
subplot(3,1,2)
plot(t2,y2,'r')
title('cos wave 2')
xlabel('Time')
ylabel('Amplitude')
mat=[t1' t2' y1' y2']
a=input('Enter column no. from 1 to 4:')
subplot(3,1,3)
plot(mat(:,a),'m')