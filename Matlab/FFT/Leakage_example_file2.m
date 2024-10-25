if window % Test 4
    ysampled = hanning(length(ysampled')) .* ysampled';
end

if NFFT == 2*N  % Test 2
    tsampled = [tsampled'; tsampled'+N/fs]; ysampled = [ysampled'; 0*ysampled'];
    tsim = [tsim'; tsim'+N/fs]; ysim = [ysim'; ysim'];
end

figure(1)
plot(tsim,ysim)
hold on
stem(tsampled,ysampled)
hold off
title('Signals y(t) and y[k]')
xlabel('Time (s)'), xlim([0 tsim(end)])
ylabel('Amplitude')

spectrum_y = fft(ysampled,NFFT);
f = (0:NFFT/2)*(fs/NFFT);
mag = (2/NFFT)*abs(spectrum_y(1:NFFT/2+1)); 
mag(1) = mag(1)/2;

figure(2)
stem(f,mag) 
title('Amplitude spectrum of y[k]')
xlabel('Frequency (Hz)')
ylabel('Amplitude'), ylim([0 1.1])