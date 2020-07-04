%To observe the spectrum of sinusoidal, square and triangular signals using
%FFT 


Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period     
t = 20 ;               %Time sampled , t 
dt = 0:T:t-T ;        %Signal Strength 

%Generating signals in time domain 

%Square Wave 
subplot(321)  
x1 = square(2*pi*dt) ;  %Time period = 1 second 
plot(dt,x1) 
title('Square Wave') ; 

%Sinusoidal 
subplot(323) 
x2 = sin(dt) ;  %time period = 2*pi 
plot(dt,x2) 
title('Sinusoidal Wave') ; 

%Triangular Wave 
subplot(325) 
x3 = sawtooth(2*pi*0.5*dt,0.5) ; %Frequency = 0.5 Hz 
plot(dt,x3) 
title('Triangular Wave') ; 

%Number of samples 
k = Fs*t ; 

%Generating signals using FFT - Amplitude Spectrum 
X1 = fft(x1) ; 
subplot(322) 
plot(abs(X1)/(0.5*k))

X2 = fft(x2) ; 
subplot(324) 
plot(abs(X2)/(0.5*k)) 

X3 = fft(x3) ; 
subplot(326) 
plot(abs(X3)/(0.5*k)) 