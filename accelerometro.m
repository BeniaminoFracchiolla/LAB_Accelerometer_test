%time domain

load('X.mat');
load('t.mat');

X1=X.*(1/0.0533);
S=mean(X);
z=length(X);
s=ones(z,1);
s1=S.*s;

i=1;

A=ones(z,1);

for i=1:z;
    if X(i) > 0.8;
        A(i)=A(i)*X(i);
    end
end

A(A==1) = []; %elimina tutti gli elementi del vettore uguali ad 1
A1=mean(A);
A2=A1.*s;

B=ones(z,1);

for i=1:z;
    if X(i) < -0.3;
        B(i)=B(i)*X(i);
    end
end

B(B==1) = [];
B1=mean(B);
B2=B1.*s;


figure(1)
plot(t,X,'b',t,s1,'r',t,A2,'g',t,B2,'y')
title('Signal in time domain')
xlabel('t [seconds]')
ylabel('X(t)   [V]')
legend('signal','signal offset','mean max amplitude', 'mean min amplitude')

%frequency domain
Fs=3000.03;
L = length(X);

Y = fft(X);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
figure(2)
plot(f,P1)
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f [Hz]')
ylabel('|P1(f)|   [V]')




