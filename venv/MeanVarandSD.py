# Mean, Variance and SD
import numpy as np
import math

N = 100
dataset = np.random.randint(10, size = N )
print(dataset)

no_of_points = (N - 1) ;
print("Number of points", no_of_points)

# Calculating mean
sum = 0
for i in range(0, N):
    sum = sum + dataset[i]

mean = sum/N

print("Mean =", mean)

# Calculating Variance
varsum = 0
for i in range(0, N):
    varsum = varsum + (mean - dataset[i])**2

var = varsum/N
print("Variance = " ,var)


#Calculating Standard Deviation
sd = math.sqrt(var)
print("Standard Deviation = ", sd)