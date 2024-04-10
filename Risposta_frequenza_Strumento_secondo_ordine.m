% Risposta in frequenza - Strumento secondo ordine
clear all 
close all 
clc

zita = 0:0.2:1;
x = 0:0.01:3;

j=1;
z=1;

for z=1:length(zita)
    for j=1:length(x)
        y(j,z)=-1/((1-(x(j))^2)+2*i*zita(z)*x(j));
        M(j,z)=abs(y(j,z));
        phi(j,z)=angle(y(j,z));
    end
end

for z=1:length(zita)
    figure(1)
    hold on

    txt = ['\zeta = ',num2str(z/5-0.2)]; %num2str Convert numbers to character representation
    plot(x,M(:,z),'DisplayName',txt)

    title('Magnitude of Second Order System')
    subtitle('\omega/\omega_n=1')
    xlabel('\omega')
    ylabel('x_o/x_i')

    axis([0 2.5 0 6]) %set limit to axis range

    legend
    
    figure(2)
    hold on

    txt = ['\zeta = ',num2str(z/5-0.2)]; %num2str Convert numbers to character representation
    plot(x,phi(:,z),'DisplayName',txt)

    title('Phase of Second Order System')
    subtitle('\omega/\omega_n=1')
    xlabel('\omega')
    ylabel('\phi')

    yticks([0 pi/2 pi])
    yticklabels({'0','\pi/2','\pi'})

    axis([0 2.5 0 pi]) %set limit to axis range
    
    legend
end

clc
clear all

wn = 1:0.2:2;
x = 0:0.01:3;

j=1;
z=1;

for z=1:length(wn)
    for j=1:length(x)
        y(j,z)=-1/((1-((x(j)/wn(z))^2)+2*i*0.5*(x(j)/wn(z))));
        M(j,z)=abs(y(j,z));
        phi(j,z)=angle(y(j,z));
    end
end

for z=1:length(wn)
    figure(3)
    hold on

    txt = ['\omega/\omega_n = ',num2str(1+z/5-0.2)]; %num2str Convert numbers to character representation
    plot(x,M(:,z),'DisplayName',txt)

    title('Magnitude of Second Order System')
    subtitle('\zeta=0.5')
    xlabel('\omega')
    ylabel('x_o/x_i')

    axis([0 2.5 0 1.5]) %set limit to axis range

    legend
    
    figure(4)
    hold on

    txt = ['\omega/\omega_n = ',num2str(1+z/5-0.2)]; %num2str Convert numbers to character representation
    plot(x,phi(:,z),'DisplayName',txt)

    title('Phase of Second Order System')
    subtitle('\zeta=0.5')
    xlabel('\omega')
    ylabel('\phi')

    yticks([0 pi/2 pi])
    yticklabels({'0','\pi/2','\pi'})

    axis([0 2.5 0 pi]) %set limit to axis range
    
    legend
end

     

