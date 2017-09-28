%Fourier series

t=linspace(-1,1,1000);
T=1;
omega=pi;
n=2;

a=[];
b=[];
#plot(a);
fun_0 =@(x) 1/T*x;
a0=quad(fun_0,-1,1);

max_freq=1000;
for n=1:100;
  fun_1 =@(x) 1/T.*x .*sin(n.*x.*omega);
  fun_2 =@(x) 1/T.*x .*cos(n.*x.*omega);
  a_k = quadgk(fun_1,-T,T);
  b_k = quadgk(fun_2,-T,T);
  
  a=[a a_k];
  b=[b b_k];
end 

#plt=a0/2;
#a0

t_=linspace(-10,10,10000);

mf=10;
fs(mf,a0,t_,a,b,omega);

figure1=figure % new figure
ax_1 = subplot(2,2,1); 
ax_2 = subplot(2,2,2); 
ax_3 = subplot(2,2,3); 
ax_4 = subplot(2,2,4); 
 
plot(ax_1,t_,fs(1,a0,t_,a,b,omega))
plot(ax_2,t_,fs(5,a0,t_,a,b,omega)) 
plot(ax_3,t_,fs(10,a0,t_,a,b,omega))
plot(ax_4,t_,fs(100,a0,t_,a,b,omega))


saveas(gcf,'image.png')
hold on;