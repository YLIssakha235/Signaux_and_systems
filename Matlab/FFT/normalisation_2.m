spectrum_y = fft(ysampled,N);
f = (0:N/2)*(fs/N);
mag = (2/N)*abs(spectrum_y(1:N/2+1)); 
mag(1) = mag(1)/2;

figure
stem(t,mag) 
title('Amplitude spectrum of y[k]')
xlabel('Frequency (Hz)')
ylabel('Amplitude'), ylim([0 1.1])