t=linspace(-10,10,10000);
func = 1/(4*sqrt(2*pi*0.0001))*(exp(-t.^2/(2*0.0001)));

N = 2^nextpow2(10000);
fs = 100;
a = fft(func,N);
freq = linspace(0,fs,N)
ax1=subplot(2,1,1);
ax2=subplot(2,1,2);

plot(ax1,t,func);
plot(ax2,freq(1:N/2),abs(a(1:N/2)));