%Engineer: Sat Patel 

%Plotting basic functions such as Unit Impulse, Unit Step, Unit Ramp and
%Exponential Signals 

t = -50:1:50 ; 

%Impulse
impulse = zeros(1,101) ; 
impulse(1,51) = 1 ; 
subplot(2,2,1) ; 
stem(t,impulse) ; 
xlabel('n') ; 
ylabel('Amp') ; 
title('Unit Impulse') ; 

%Step Function 
step = zeros(1,101) ; 
step(1, 51:101) = 1 ; 
subplot(2,2,2) ; 
stem(t, step) ; 
xlabel('n') ; 
ylabel('Amp') ; 
title('Unit Step') ; 

%Unit Ramp Function 
ramp = zeros(1,101) ; 
ramp(1,52:101) = t(1,52:101) ; 
subplot(2,2,3) ; 
stem(t, ramp) ; 
xlabel('n') ; 
ylabel('Amp') ; 
title('Unit Ramp') ; 

%Exponential Functions 
a = 1.2; 
expo = a.^t ; 
subplot(2,2,4) ; 
stem(t, expo) ; 
xlabel('n') ; 
ylabel('Amp') ; 
title('Exponential Function') ; 


