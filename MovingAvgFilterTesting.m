%Engineer: Sat Patel 

%Pure signal of 10 Hz sampled at 1000 Hz
F = 10 ; 
Fs = 1000 ; 
dt = 1/Fs ; 
N = 500 ; %No. of samples to be taken 
t = (0:N-1)*dt ; 

x = sin(2*pi*F*t) ; 
subplot(3,1,1) ; 
plot(t,x) ; 


%Adding White Gaussian Noise 

x_dirty = x ; 
x_dirty = x_dirty + ( 0.1*rand(1,N) + 0 ); %SD = 0.1, mean = 0  
subplot(3,1,2) ; 
plot(t, x_dirty) ; 

%Removing Noise through Moving Average Filter of L point 
a = 'Enter the N value of N Point Moving Average Filter' ; 
L = input(a) ; 
num = ones(1,L)/L ; 
dem = 1 ; 
y = filter(num, dem, x_dirty) ; 
subplot(3,1,3); 
plot(t, y) ; 

