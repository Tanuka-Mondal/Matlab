clc;
clear all;
close all;

t=0:0.1:10;
a=5;
f=0.5;
y1=a*sin(2*pi*f*t);
subplot(3,1,1)
plot(t,y1,'m','linewidth',2);
title('Sine Wave');
xlabel('Time');
ylabel('Amplitude');
y2=a*cos(2*pi*f*t);
subplot(3,1,2)
plot(t,y2,'g','linewidth',2);
title('Cosine Wave');
xlabel('Time');
ylabel('Amplitude');

dx = 0.01;
x = -pi/2+dx:pi/100:10*pi/2-dx;
y3 = tan(x);
subplot(3,1,3)
plot(x,y3,'r','linewidth',2);
title('Tan Wave');
xlabel('Time');
ylabel('Amplitude');