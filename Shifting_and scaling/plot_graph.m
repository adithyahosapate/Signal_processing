B= audioread ('output_file.aiff');
x=audioread ('input_file.aiff');

fs=48000

figure1=figure % new figure
ax1 = subplot(2,1,1); % top subplot
ax2 = subplot(2,1,2); % bottom subplot

no_samples=5050

samples_1=B(1:no_samples,1);

time_axis=linspace(0,no_samples/fs,length(samples_1));

samples_2=x(1:no_samples,1);



plot(ax1,time_axis,samples_2);
title(ax1,'x[n]');
ylabel(ax1,'intensity');
xlabel(ax1,'time');

plot(ax2,time_axis,samples_1);
title(ax2,'x[2n]')
ylabel(ax2,'intensity');
xlabel(ax2,'time');

saveas(gcf,'image.png')
hold on;