


a=linspace(1,1,100);
t=linspace(-1,1,300);
a=[linspace(0,0,100) a linspace(0,0,100)]; 
fs=150;
Nfft=300;
b=conv(a,a);
A=fft(a);
B=A.*A;
b



ax_1 = subplot(3,2,1); 
ax_2 = subplot(3,2,2); 

ax_3 = subplot(3,2,3); 
ax_4 = subplot(3,2,4);

ax_5 = subplot(3,2,5);
ax_6 = subplot(3,2,6);

length(b)
f=linspace(0,fs,Nfft);
plot(ax_1,t,a);
plot(ax_2,b);
plot(ax_3,f,abs(A));
plot(ax_4,abs(B));

B=B(1:floor(length(B)/2));



plot(ax_5,real(ifft(A)));
plot(ax_6,real(ifft(B,300)));

