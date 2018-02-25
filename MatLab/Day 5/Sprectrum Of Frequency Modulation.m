clc;
close all;
clear all;
t = 0:0.001:1;
fs = 1000;
am = input('Enter the amplitude of the message signal: ');
ac = input('Enter the amplitude of the carrier signal: ');
fm = input('Enter the frequency of the message signal: ');
fc = input('Enter the frequency of the carrier signal: ');
B=   input ('Enter the vale of modulation index of frequency modulation: ');
xt = am*cos(2*pi*fm*t);
ct = ac*cos(2*pi*fc*t);
sfmt= ac.*cos(2*pi*fc*t + B*sin(2*pi*fm*t))
N=length(xt);
f=linspace(-fs/2,fs/2,N);

figure %for creating a new window

subplot(3,1,1);
freqw=fftshift(fft(xt,N)/N);
plot(f,abs(freqw),'r')
title('Message Signal');
xlabel('Frequency');
ylabel('Time');
grid on;


subplot(3,1,2);
freqw=fftshift(fft(ct,N)/N);
plot(f,abs(freqw),'b')
title('Carrier Signal');
xlabel('Frequency');
ylabel('Time');
grid on;

subplot(3,1,3);
freqw=fftshift(fft(sfmt,N)/N);
plot(f,abs(freqw),'g')
title('Modulated Frequency Signal');
xlabel('Frequency');
ylabel('Time');
grid on;
