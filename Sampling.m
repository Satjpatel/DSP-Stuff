%Engineer: Sat Patel
%Basic Sampling 

%Original Signal
F = 5 ; 
T = 1/F ; 
dt = 1/10000 ; 
t = 0:dt:5*T ; 
x_original = sin(2*pi*F*t) ; 
subplot(2,2,1) ; 
plot(t, x_original) ; 
title('Original Signal') ; 

%Sampling at 50 Hz 
dt = 1/50 ; 
t = 0:dt:5*T ; 
x_50 = sin(2*pi*F*t) ; 
subplot(2,2,2) ; 
stem(t, x_50) ; 
title('At 50 Hz sampling') ; 

%Sampling at 100 Hz 
dt = 1/100 ; 
t = 0:dt:5*T ; 
x_100 = sin(2*pi*F*t) ; 
subplot(2,2,3) ; 
stem(t, x_100) ; 
title('At 100 Hz sampling') ;

%Sampling at 200 Hz 
dt = 1/200 ; 
t = 0:dt:5*T ; 
x_200 = sin(2*pi*F*t) ; 
subplot(2,2,4) ; 
stem(t, x_200) ; 
title('At 200 Hz sampling') ; 

