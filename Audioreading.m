%Reading Audiofile 
[y,Fs] = audioread('musicss.mp3') ; 
subplot(3,1,1); 
plot(y, 'g--'); 
hold on ; 
%Adding AGWN 
y_noisy = y ; 
y_noisy = y_noisy + 0.011*randn(size(y)) ; 
subplot(3,1,2); 
plot(y_noisy, 'y--'); 
audiowrite('NoisyMusic.wav',y_noisy, Fs) ; 

%Removing Noise through Moving Average Filter of L point 
a = 'Enter the N value of N Point Moving Average Filter' ; 
L = input(a) ; 
num = ones(1,L)/L ; 
dem = 1 ; 
y_pure = filter(num, dem, y_noisy) ; 
audiowrite('PurifiedMusic.wav',y_pure, Fs); 
subplot(3,1,3); 
plot(y_pure) ; 
