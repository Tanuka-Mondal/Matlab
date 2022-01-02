clc;
clear all;
n=input('\nEnter the signal length:');
t=0:n-1;
%Unit step function
x1=[1,ones(1,(n-1))];
subplot(2,2,1);
stem(t,x1,'filled','c');
xlabel('t---->','Fontsize',14)
ylabel('x(t)---->','Fontsize',14)
title('Unit Step');
%Unit impulse function
x2=[1,zeros(1,(n-1))];
subplot(2,2,2);
stem(t,x2,'filled','g');
xlabel('t---->','Fontsize',14)
ylabel('x(t)---->','Fontsize',14)
title('Unit Impulse');
%Unit ramp function
x3=t;
subplot(2,2,3);
stem(t,x3,'filled','r');
xlabel('t---->','Fontsize',14)
ylabel('x(t)---->','Fontsize',14)
title('Unit Ramp');
%Sine function
n1 = input("\nEnter the signal length of sin wave:");
t1 = 0:n1-1;
x=10*sin(2*pi*t1/15);
subplot(2,2,4);
stem(t1,x,'filled','m')
xlabel('t---->','Fontsize',14);
ylabel('x(t)---->','Fontsize',14);
title('Sine Wave');

