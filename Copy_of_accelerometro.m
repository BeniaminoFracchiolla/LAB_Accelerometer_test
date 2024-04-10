%time domain

load('X.mat');
load('t.mat');

X1=X.*(1/0.0533); %from volt to m/s^2 through sensitivity

figure(1)
plot(t,X1,'b')
title('Signal in time domain')
xlabel('t [seconds]')
ylabel('X(t)   [m/s^2]')
legend('signal','signal offset','mean max amplitude', 'mean min amplitude')

%frequency domain
Fs=3000.03;
L = length(X1);

Y = fft(X1);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
figure(2)
plot(f,P1)
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f [Hz]')
ylabel('|P1(f)|   [m/s^2]')




