import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as animation
import librosa

y, sr = librosa.load("PurpleLamborghini.aiff") 
C=librosa.cqt(y,sr=sr).T[:]



def update_line(num, data, line):
    line.set_data(np.arange(0,data.shape[1]),data[num])
    return line,

fig1 = plt.figure()

data = np.abs(C)
l, = plt.plot([], [], 'r-')
plt.xlim(0, 84)
plt.ylim(0, 10)
plt.xlabel('x')
plt.title('test')
line_ani = animation.FuncAnimation(fig1, update_line, save_count=4000, fargs=(data, l),
                                 interval=37, blit=True)
line_ani.save('lines.mp4')






