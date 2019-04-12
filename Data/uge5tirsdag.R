#SS.23
#6

#Vi starter med at simulere 10.000 standard uniform fordelte variable.
n = 10000
X = runif(n, 0,1)
Y = runif(n, 0,1)

#Har vi regnet rigtigt i (1)?
W = 1/(Y+1)
mean(W)
log(2)

#Har vi regnet rigtigt i (2)?
Q = (X+1)/(Y+1)
mean(Q)
3/2*log(2)

#Okay, men har vi ogs?? regnet rigtigt i (5)?
Z = abs(X-Y)
mean(Z)
1/3
