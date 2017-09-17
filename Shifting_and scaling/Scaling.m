x = audioread ('input_file.aiff');
graphics_toolkit('gnuplot');
%x=X[n]
%This script removes every odd sample from a digital signal ie it computes x[2n]
fs=44100;
%fs is the sampling frequency

B = x(2:2:end,:) ; % even matrix
%B=x[2n]
audiowrite('output_file.aiff',B,fs);

% the audio file will feel sped up by a factor of 2 as we are playing half the samples at the same playback rate
%If you play the audio at x0.5 speed, you will get a slightly distorted ,but similar audio file.

channel1=B(1:5050,1);

points=linspace(1,50,length(channel1));

plot(points,channel1);
hold on
channel2=x(1:5050,1);

points=linspace(1,50,length(channel2));


plot(points,channel2,'green');