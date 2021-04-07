# Running Statistics
# Better than the direct formula because we don't require all the terms to calculate the square root
import numpy as np
import math

N = 100
dataset = np.random.randint(10, size = N )
print(dataset)

no_of_points = (N - 1) ;
print("Number of points", no_of_points)


sum = 0
sqsum = 0

for i in range(1, N):
    sum = sum + dataset(i)
    sqsum = sqsum _ dataset(i)**2

var = ((sqsum) - (1/N)*sum**2)/(N-1)
print(var)