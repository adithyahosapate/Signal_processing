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

plt=a0/2;
a0

t_=linspace(-10,10,10000);
function plt=fourier_series(mf,a0,a,b)
  plt=a0/2;
  for j=1:mf;
    plt=plt+a(j)*sin(j*t_*omega)+b(j)*cos(j*t_*omega);
  end
endfunction

figure1=figure % new figure
ax_1 = subplot(2,1,1); % top subplot
ax_2 = subplot(2,1,2); % bottom subplot
 
plot(ax_1,t_,fourier_series(10,a0,a,b))
plot(ax_2,t_,fourier_series(100,a0,a,b))

