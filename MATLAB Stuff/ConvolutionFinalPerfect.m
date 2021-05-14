%Engineer: Sat Patel
%Convolution Stuff


clc ; 
close all; 
clear all ; 
%First Sequence 
xn=input('Enter the 1st Sequence:');
lower_limit_1=input('Enter the lower limit:');
upper_limit_1=input('Enter the upper limit:');
x1=lower_limit_1:1:upper_limit_1; %limit of sequence x(n)

subplot(5,1,1);
stem(x1,xn);
xlabel('Time');
ylabel('Amplitude');
title('Function x(n)');
grid on;

%Second Sequence 
hn=input('Enter the 2nd Sequence:');
lower_limit_2=input('Enter the lower limit:');
upper_limit_2=input('Enter the upper limit:');
x2=lower_limit_2:1:upper_limit_2; %limit of sequence x(n)

subplot(5,1,2);
stem(x2,hn);
xlabel('Time');
ylabel('Amplitude');
title('Function h(n)');


%Implementing Home Made function 
lower1 = lower_limit_1 + lower_limit_2 ; 
upper1 = upper_limit_1 + upper_limit_2 ; 
len = lower1:1:upper1 ; 

y = myconv(xn,hn) ; 
subplot(5,1,3) ; 
stem(len, y) ; 
title('Home Made Convolution') ; 


%Implementing Inbuilt Convolution Function 
y_inbuilt = conv(xn, hn) ; 
subplot(5,1,4) ; 
stem(len, y_inbuilt) ; 
title('MATLAB Convolution') ;

%Difference plotting -- should be zero if both are correct 
y_diff = y - y_inbuilt ; 
subplot(5,1,5) ; 
stem(len, y_diff) ; 
title('Difference between the two') ; 





function [y] = myconv(x1, x2) 
  L1 = length(x1) ; 
  L2 = length(x2) ; 
  m = L1 + L2 - 1 ; 
  y = zeros(1,m) ; 
 %Making the matrices of the same length
  x1n = [x1, zeros(1, L2-1) ] ; 
  x2n = [x2, zeros(1, L1-1) ] ; 
     for i=1:m 
         for j=1:i 
              y(i) = y(i) + x1n(j)*x2n(i-j+1) ; 
         end 
      end 
 end