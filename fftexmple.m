%Trying fft 

Fs = 1000;            % Sampling frequency                    
T = 1/Fs;             % Sampling period     
t = 2 ;               %Time sampled , t 
dt = 0:T:t-T ;        %Signal Strength 

f1 = 10 ; 
f2 = 30 ; 
f3 = 70 ; 

y1 = 10*sin(2*pi*f1*dt) ; 
y2 = 20*sin(2*pi*f2*dt) ; 
y3 = 30*sin(2*pi*f3*dt) ; 

% subplot(321) ; 
% plot(dt, y1, 'r') ; 
% subplot(323) ; 
% plot(dt, y2, 'b') ; 
% subplot(325) ; 
% plot(dt, y3 , 'y') ; 


y4 = y1 + y2 + y3 ; 
% subplot(324) ;
X = fft(y4) ; 
X_absolute = abs(X) ; 

%Number of Samples, k 
k = Fs*t ; 
plot(X_absolute/(0.5*k)) 


