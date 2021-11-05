fs = 50; 
fc = 10; 
t = (0:2*fs+1)'/fs; 
phasedev = pi/2; 
T = (-1:0.01:1)';
X = 2;
tX = pmmod(X,fc,fs,phasedev);
y = pmdemod(tX,fc,fs,phasedev); 
figure;
plot(t,X,t,y,'.r')
legend('Original signal' , 'Recovered signal');
xlabel('Time (s)');
ylabel('Amplitude (V)');