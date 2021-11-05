fs = 50; 
fc = 10; 
T = (0:2*fs+1)'/fs; 
phasedev = pi/2; 
square_wave = square (T);
tX = pmmod(square_wave,fc,fs,phasedev);
y = pmdemod(tX,fc,fs,phasedev); 
figure;
plot(T,square_wave,T,y,'.r')
legend('Original signal' , 'Recovered signal');
xlabel('Time (s)');
ylabel('Amplitude (V)');