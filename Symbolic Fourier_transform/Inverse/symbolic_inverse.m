syms t w;


T=0.5;
%enter function here
original_function=e^(-t^2)

fourier_func= pi*exp(-abs(w))
fig1=figure
subplot(4,1,1)
ezplot(original_function);
title('Function : (1/(1+t^2))');

ft=fourier(original_function);
ft=simplify(ft)

subplot(4,1,2)
ezplot(abs(ft));
mag_resp=abs(ft)
title('Magnitude response : pi*exp(-abs(w))')

phs_resp=angle(ft)
fourier_trans=ft
subplot(4,1,3)
fplot(angle(ft));
title('Phase response : 0')


reconstructed=ifourier(fourier_func)



subplot(4,1,4)
fplot(reconstructed);
title('Recostructed : 1/(x^2 + 1)')

print(fig1,'plot','-dpng');

