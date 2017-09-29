fs=44100;
time_duration=10;
t=linspace(0,time_duration,time_duration*fs);
original=sin(t.*(100*pi));
x=sin(t.*(100*pi))+1*stdnormal_rnd([1,length(t)]);

plot(x);

audiowrite("corrupted.aiff",x,fs);
audiowrite("original.aiff",original,fs);