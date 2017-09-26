b=linspace(-10,10,1000);
a=linspace(-10,10,1000);
Z=sinc(a);
c=conv(a,b);
#plot(linspace(min(c),max(c),length(c)),c);
A=fft(Z);
B=fft(b);
#plot(Z);
plot(linspace(1,2,length(A)),abs(A)/length(A));
A=linspace(10,10,1000);

Z=ifft(A)
plot(linspace(min(Z),max(Z),length(Z)),Z);