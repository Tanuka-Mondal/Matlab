clc;
clear all;
n=input('\nEnter the signal length:');
t=0:1:n-1;
a1 = input('\nEnter the sequence val of (a1>1):');
a2 = input('\nEnter the sequence val of (0<a2<1):');
a3 = input('\nEnter the sequence val of (a3<-1):');
a4 = input('\nEnter the sequence val of (-1<a4<0):');
x1=(a1.^t);
subplot(2,2,1);
stem(t,x1,'filled','c');
xlabel('t---->','Fontsize',14);
ylabel('x(t)---->','Fontsize',14);
title('Exponential Function for (a>1)');

x2=(a2.^t);
subplot(2,2,2);
stem(t,x2,'filled','r');
xlabel('t---->','Fontsize',14);
ylabel('x(t)---->','Fontsize',14);
title('Exponential Function for (0<a<1)');

x3=(a3.^t);
subplot(2,2,3);
stem(t,x3,'filled','b');
xlabel('t---->','Fontsize',14);
ylabel('x(t)---->','Fontsize',14);
title('Exponential Function for (a<-1)');

x4=(a4.^t);
subplot(2,2,4);
stem(t,x4,'filled','g');
xlabel('t---->','Fontsize',14);
ylabel('x(t)---->','Fontsize',14);
title('Exponential Function for (-1<a<0)');
