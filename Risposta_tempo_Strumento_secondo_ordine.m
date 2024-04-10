%% Soluzione omogenea assciata strumento del secondo ordine
clear all 
close all 
clc

zita = 0.8:0.2:1.2;
x = 0:0.01:10;

z=1;
j=1;

for z=1:length(zita)
    for j=1:length(x)
        
        A=[1,1;-zita(z)+((zita(z)^2)-1)^0.5,-zita(z)-((zita(z)^2)-1)^0.5];
        b=[0;0];
        c=A\b;
        
        y(j,z)=1+exp((-zita(z)+((zita(z)^2)-1)^0.5)*x(j))+exp((-zita(z)-((zita(z)^2)-1)^0.5)*x(j));
    end  
end

for z=1:length(zita)
    figure(1)
    hold on

    txt = ['\zeta = ',num2str(z/5+0.6)]; %num2str Convert numbers to character representation
    plot(x,y(:,z),'DisplayName',txt)

    title('Omogenea Associata')
    subtitle('\omega_n=1')
    xlabel('t')
    ylabel('q_o(t)')

    %axis([0 2.5 0 6]) %set limit to axis range

    legend
end

