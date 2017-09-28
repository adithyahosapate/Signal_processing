%Fourier series

t=linspace(-1,1,1000);
T=2;
omega=2*pi/T;
n=2;
a=[t t t];
#plot(a);
max_freq=100;

fun =sin((1:100)*x*omega)
a_k = 1/T*quad(fun,-1,1)
