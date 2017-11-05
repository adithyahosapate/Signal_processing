T=1;
A=1;
phi=0;
N=50;
f=0.25;
n=[0:N-1];
zero_padding=100;

x=A*cos(2*pi*n*f*T+phi);
X=fft(x);

figure(1);
subplot(4,1,1);
plot(n,x,'*k');
ni=[0:.1:N-1];
hold on;


subplot(4,1,2);
plot(ni,A*cos(2*pi*ni*f*T+phi),'-k'); 
grid off;
hold off;


subplot(4,1,3);
mX=abs(X);
fn=[0:1/N:1-1/N];
stem(fn,mX,'ok');



subplot(4,1,4);
x=[ x linspace(0,0,zero_padding)]
X=fft(x);

mX=abs(X);
fn=[0:1/(N+zero_padding):1-1/(N+zero_padding)];
stem(fn,mX,'ok');
