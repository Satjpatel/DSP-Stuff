#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed May 12 21:52:43 2021

@author:Sat Patel 
"""
#DSP Training 
# Implementing a  DFT Algorithm 

import matplotlib.pyplot as plt 
import numpy as np 

# Input Signal 

# Sampling Rate 
s_r = 100 

#Ssampling Interval 
t_s = 1.0/s_r ; 

#Time Axis 
t = np.arange(0,1,t_s) 

# Plotting waves 

#Signal 1 
f1 = 1 
x1 = 3*np.sin(2*np.pi*f1*t) 
plt.subplot (2,3,1) 
plt.plot(t, x1, 'g') 

#Signal 2 
f2 = 6
x2 = 5*np.sin(2*np.pi*f2*t) 
plt.subplot (2,3,2) 
plt.plot(t, x2) 

#Signal 3 
f3 = 11 
x3 = 3*np.sin(2*np.pi*f3*t) 
plt.subplot (2,3,3) 
plt.plot(t, x3) 



#Combining the three input signals 
x_total = x1 + x2 + x3 
plt.subplot (2,3,4) 
plt.plot(t, x_total) 

# Now, analysing it in frequency domain 

# we will implement a self build function, and test the inbuilt function as well

def DFT_by_Sat (x) :
    N = len(x)  # Total number of samples in freq. domain 
    n = np.arange(N) 
    k = n.reshape((N,1))  #Current frequency sample 
    expo_part_k = np.exp(-1j*2*np.pi*k*n/N) 
    
    # Final array in frequency domain 
    X = np.dot(x,expo_part_k) 
    
    return X 

X_F = DFT_by_Sat (x_total) 

#Calculating the freq 
N = len(X_F) 
n = np.arange(N) 

T = N/s_r 
freq = n/T 
# N points, each at s_r frequency 

plt.subplot(2,3,5) 
plt.plot(freq, abs(X_F)/N)


