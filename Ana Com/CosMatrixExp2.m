clc
clear all
close all
Fs = 10e4; %sampling frequency
dt = 1/Fs;
a1 = input('Enter the amplitude of 1st cos wave: ');
f1 = input('Enter the frequency of 1st cos wave: ');
c1 = input('Enter the cycle of 1st cos wave: ');
T1 = c1*(1/f1);
t1 = (0:dt:T1)';
y1 = a1*cos(2*pi*f1*t1); % 1st cos wave
subplot(2,1,1)
plot(t1,y1,'g','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','m','fontweight','bold','fontsize',14);
title('Cos Wave 1','fontweight','bold','fontsize',14);
a2 = input('Enter the amplitude of 2nd cos wave: ');
f2 = input('Enter the frequency of 2nd cos wave: ');
c2 = input('Enter the cycle of 2nd cos wave: ');
T2 = c2*(1/f2);
t2 = (0:dt:T2)';
y2 = a2*cos(2*pi*f2*t2); %2nd cos wave
subplot(2,1,2)
plot(t2,y2,'b','linewidth',2)
xlabel('Time','color','r','fontweight','bold','fontsize',14);
ylabel('Amplitude','color','m','fontweight','bold','fontsize',14);
title('Cos Wave 2','fontweight','bold','fontsize',14);

diff = length(t1)-length(t2);
t_new2 = [t2;zeros(diff,1)];
y_new2 = [y2;zeros(diff,1)];
matrix = [t1 t_new2 y1 y_new2];
row = input('Enter any number of row of the Matrix: ');
x = matrix(row,:);
fprintf('%5.5f     ',x);
fprintf('\n'); 
col = input('Enter any number of column of the Matrix: ');
c = matrix(:,col);
figure()
plot(t1,c);


