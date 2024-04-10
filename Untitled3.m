tstan =[0 5];
y0=[0 0];
[t,y]=ode23('funzione3',tstan,y0);
plot(t,y)