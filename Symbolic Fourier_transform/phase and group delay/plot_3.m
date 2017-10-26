syms t w;


fourier_func = exp(-sqrt(-1)*w)

fig1=figure

subplot(3,1,1)
fplot(angle(fourier_func))
phase_resp = angle(fourier_func)
title('Phase response of exp(-sqrt(-1)*w)')


subplot(3,1,2)
phase_delay = -(phase_resp/w)
fplot(phase_delay,[-1,1])

title('Phase delay')


subplot(3,1,3)

group_delay = -diff(phase_resp)
fplot(group_delay,[-1,1])
title('Group delay')




print(fig1,'plot_3','-dpng');