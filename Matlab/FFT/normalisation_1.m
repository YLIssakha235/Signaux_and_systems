spectrum_y = fft(ysampled,N);
f = (-N/2:N/2-1)*(fs/N);
mag = (1/N)*abs(fftshift(spectrum_y));

figure
stem(f,mag) 
title('Amplitude spectrum of y[k]')
xlabel('Frequency (Hz)')
ylabel('Amplitude'), ylim([0 0.6])