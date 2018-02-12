clc;
close all;
clear all;
t=0:0.001:1;
Am=input('Enter Amplitude of Message');
Ac=input('Enter Amplitude of carrier');
fm=input('Enter the Frequency of the Message Signal');
fc=input('Enter the Frequency of Carrier Signal');
m=Am*cos(2*pi*fm*t)
c=Ac*cos(2*pi*fc*t)
x=Am*cos(2*pi*fm*t-pi/2)
l=m.*cos(2*pi*fc*t)+x.*sin(2*pi*fc*t)
u=m.*cos(2*pi*fc*t)-x.*sin(2*pi*fc*t)
subplot(5,1,1)
plot(t,m,'r');
title("Message Signal")
xlabel('Time')
ylabel('Amplitude ')

subplot(5,1,2)
plot(t,c,'g');
title("Carrier Signal")
xlabel('Time')
ylabel('Amplitude ')

subplot(5,1,3)
plot(t,x,'b');
title("Hilbert Signal")
xlabel('Time')
ylabel('Amplitude ')


subplot(5,1,4)
plot(t,l,'c');
title("SSB-LSB Signal")
xlabel('Time')
ylabel('Amplitude ')



subplot(5,1,5)
plot(t,u,'k');
title("SSB-USB Signal")                                                                                                                                                                                                                                                                                                                                                 
xlabel('Time')
ylabel('Amplitude ')


