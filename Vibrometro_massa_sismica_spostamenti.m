% Vibrometro a massa sismica per misure di spostamenti
clear all 
close all 
clc

zita = 0:0.1:1;
x = 0:0.01:3;

j=1;
z=1

for z=1:length(zita)
    for j=1:length(x)
        y(j,z)=-((x(j))^2)/((1-(x(j))^2)+2*i*zita(z)*x(j));
        M(j,z)=abs(y(j,z));
        phi(j,z)=angle(y(j,z));
    end
end

for z=1:length(zita)
    figure(1)
    hold on
    plot(x,M(:,z))
    title('Module graph')
    xlabel('\omega')
    ylabel('x_o/x_i')
    axis([0 max(x) 0 6])
    figure(2)
    hold on
    plot(x,phi(:,z))
    title('Phase graph')
    xlabel('\omega')
    ylabel('\phi')
end

