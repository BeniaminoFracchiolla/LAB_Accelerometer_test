% Strumenti del secondo ordine, caratteristiche
clear all 
close all 
clc

zita = 0:0.1:1;
omegaton = 0:0.01:3;

M = zeros(length(zita),length(omegaton));
phi = zeros(length(zita),length(omegaton));

for i = 1:length(zita)
    for j = 1: length(omegaton)
        M(i,j) = 1/sqrt((1-omegaton(j)^2)^2+(2*zita(i)*omegaton(j))^2);
        phi(i,j) = -atan2(2*zita(i)*omegaton(j),(1-omegaton(j)^2));
    end
    subplot(2,3,1:3)
    plot(omegaton,M(i,:))
    hold on; grid on;
    title('Modulo della funzione di trasferimento')
    xlabel('\omega/\omega_n')
    ylabel('M')
    axis([0 max(omegaton) 0 6])
    subplot(2,3,4:6)
    plot(omegaton,phi(i,:))
    hold on; grid on;
    title('fase della funzione di trasferimento')
    xlabel('\omega/\omega_n')
    ylabel('\Phi')
    yticks([-pi,-3/4*pi,-pi/2,-pi/4,0]);
    yticklabels({'-\pi','-3/4\pi','-\pi/2','-\pi/4','0'})
end

clear i; clear j;

