function [] = plot_fourier( input_string )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
func = evalin(symengine,input_string)

fig1=figure
subplot(3,1,1)
fplot(func,[-5,5]);
title('Function');

ft=fourier(func);
ft=simplify(ft)

subplot(3,1,2)
fplot(abs(ft));
mag_resp=abs(ft)
title('Magnitude response')

phs_resp=angle(ft)

subplot(3,1,3)
fplot(angle(ft));
title('Phase response')

try
 print(fig1,input_string,'-dpng');
catch
 print(fig1,'Image','-dpng');
end
end

