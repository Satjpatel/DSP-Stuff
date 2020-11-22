%Engineer: Sat Patel 

%DTFT - Incomplete Status 

%Original Signal 
F = 5  ; 
T = 1/F ; 
dt = 1/10000 ; 
t = -5*T:dt:5*T ;  
x_n = cos(2*pi*F*t) ; 
subplot(4,1,1) ; 
stem(t, x) ; 
 

%Signal sampled at 100 Hz 
dt = 1/100 ; 
t = -5*T:dt:5*T ;   
x_sampled = cos(2*pi*F*t) ; 
subplot(4,1,2); 
stem(t, x_sampled) ; 
Fs = 100 ; 

 
%Computing 100 Point DFT 
n = 0:99 ;
X_F_100 = fft(x_sampled, 100) ; 
subplot(4,1,3) ; 
stem(n, abs(X_F_100)) ; 

%Computing 85 Point DFT 
n2 = 0:84  ; 

X_F_85 = fft(x_sampled, 85) ; 
subplot(4,1,4); 
stem(n2,abs( X_F_85)) ; 
