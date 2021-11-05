fs = 50; 
fc = 10; 
T = (0:2*fs+1)'/fs; 
phasedev = pi/2; 
sawtooth_wave = sawtooth (T);
tX = pmmod(sawtooth_wave,fc,fs,phasedev);
y = pmdemod(tX,fc,fs,phasedev); 
figure;
plot(T,sawtooth_wave,T,y,'.r')
legend('Original signal' , 'Recovered signal');
xlabel('Time (s)');
ylabel('Amplitude (V)');