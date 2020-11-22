%Engineer: Sat Patel
%Computing simple DFT 

x = [ 1  1  1 1 ] ; 
n = 0:3 ; 
subplot(3,2,1) ; 
stem(n,x) ; 
title('Original Matrix') ; 

%DFT Matrix 
dftmatrix4 = dftmtx(4) ; 

DFT_using_dftmtx = x*dftmatrix4 ; 
subplot(3,2,2) ; 
stem(n, DFT_using_dftmtx) ; 
title('DFT using dftmtx') ; 

%Inverse DFT using dftmtx 
inversedftmatrix4 = inv(dftmatrix4) ; 
IDFT_using_inverse_dftmtx = DFT_using_dftmtx*inversedftmatrix4 ; 
subplot(3,2,3) ; 
stem(n, IDFT_using_inverse_dftmtx) ; 
title('IDFT using Inverse dftmtx') ;  


%DFT using fft function 
DFT_using_FFT = fft(x,4) ; 
subplot(3,2,4) ; 
stem(n, DFT_using_FFT) ; 
title('DFT using FFT function') ; 

%IDFT using ifft function 
IDFT_using_IFFT = ifft(DFT_using_FFT, 4) ; 
subplot(3,2,5) ; 
stem(n, IDFT_using_IFFT) ; 
title('DFT using IFFT function') ; 

%Difference between dftmtx and fft 
display(norm(DFT_using_FFT - DFT_using_dftmtx)) ; 