b=linspace(1,2,1000);
a=linspace(1,2,1000);
c=conv(a,b);
plot(linspace(min(c),max(c),length(c)),c);