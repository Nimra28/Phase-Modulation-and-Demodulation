fs = 50; 
fc = 10; 
t = (0:2*fs+1)'/fs; 
unitstep = t>=0;
ramp = t.*unitstep;
phasedev = pi/2; 
tx = pmmod(ramp,fc,fs,phasedev);
y = pmdemod(tx,fc,fs,phasedev); 
figure;
plot(t,ramp,t,y,'.r')
legend('Original signal' , 'Recovered signal');
xlabel('Time (s)');
ylabel('Amplitude (V)');