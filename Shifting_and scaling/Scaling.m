x = audioread ('<raw audio file>');

%x=X[n]
%This script removes every odd sample from a digital signal ie it computes x[2n]
fs=44100;
%fs is the sampling frequency

B = x(2:2:end,:) ; % even matrix
%B=x[2n]
audiowrite('<output file>',B,fs);

% the audio file will feel sped up by a factor of 2 as we are playing half the samples at the same playback rate
%If you play the audio at x0.5 speed, you will get a slightly distorted ,but similar audio file.

