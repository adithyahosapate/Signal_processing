%Matlab-Programming
[y,fs]=audioread('corrupted.aiff');
%wavread = reads WAV-file

t=linspace(0,length(y)/fs,length(y));
%linspace = creating time vector
%0= start time
Nfft=length(y);
%Nfft = length of fft
f=linspace(0,fs,Nfft);
%f =creating frequency vector
%0 = start time
%fs = End time
%Nfft = Length of the frequency vector

z=y(1:end);
cutoff_frequency=100;

song_1=fft(z,Nfft);
X=abs(song_1);


song_1(floor(cutoff_frequency*Nfft/fs):end)=0;
song=ifft(song_1,Nfft);

X=abs(song_1);
figure ;
plot(f,X)

%out=10*log10(X(1:Nfft/2)/max(X));
audiowrite('filtered.aiff',2.*song,fs);