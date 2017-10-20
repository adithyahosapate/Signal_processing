syms t;

T=0.5;
%enter function here
func= (1-2*abs(t)/T)*(heaviside(t+T)-heaviside(t-T))

subplot(3,1,1)
ezplot(func);
title('Function');

ft=fourier(func);
ft=simplify(ft)

subplot(3,1,2)
ezplot(abs(ft));
mag_resp=abs(ft)
title('Magnitude response')

phs_resp=angle(ft)

subplot(3,1,3)
fplot(angle(ft));
title('Phase response')


