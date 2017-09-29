 %Matlab-Programming
[y,fs]=audioread('input_file.aiff');
%wavread = reads WAV-file
%y = samples
%fs = sampling frequency 
%'UnchainMyHeart' =  WAV-file
t=linspace(0,length(y)/fs,length(y));
%linspace = creating time vector
%0= start time
%length(y)/fs = end time
%length(y) = number of samples in y 
%plot(t,y);
Nfft=length(y);
%Nfft = length of fft
f=linspace(0,fs,Nfft);
%f =creating frequency vector
%0 = start time
%fs = End time
%Nfft = Length of the frequency vector
z=y(1:end);
X=abs(fft(z,Nfft));

%G = the fft of the samples y in 1024 points
figure ;
plot(f(1:Nfft/2),(10*log10(X(1:Nfft/2)/max(X))))
out=10*log10(X(1:Nfft/2)/max(X));
audiowrite('fourier_transform.aiff',out,fs);
