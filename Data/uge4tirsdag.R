#SS.17

#1
n = 10000
#Vi simulerer en normalfordeling med passende parametre, 
#husk p?? det ikke er varians der den anden parameter i rnorm.
X = rnorm(n, mean = 3, sd = 2)
#Laver et histogram, nclass funktionen kan v??re meget brugbar. 
hist(X, nclass = 30, xlim = c(-4,10))
#Det ser rimelig godt ud, p??n kurve der topper omkring 3. Det er noget st??j, men det er forventeligt.
mean(X)
var(X)
#Meget t??t p?? de teoretiske, 3 og 4.

#2
#I afsnit 5,5 regner de middelv??rdi og varians ud for eksponentialfordelingen. Denne er 1/lambda, 
#dvs. den reciprokke til rate parameteren. 
#Videre er variansen 1/lambda^2. 
#Teoretisk mean
1/3
#Teoretisk varians
1/3^2
#Simulering
Y = rexp(n, rate = 3)
mean(Y)
var(Y)
#Passer rimelig godt

#3
#Simulering
U = runif(n, min = 0, max = 1)
mean(U)
var(U)
#I afsnit 5,3 regner BH middelv??rdi og varians for en ligefordeling.
#Teoretisk mean
1/2*(1-0) 
#Teoretisk varians
1/12*(1-0)^2

#SS.18

#1-2
#Vi kan genbruge den ligefordeling vi allerede har kigget p??
#Vi laver en ny variabel, A.
A = pi*U^2
#Empirisk vs. teoretisk middelv??rdi.
mean(A)
pi/3
#Empirisk vs. teoretisk varians.
var(A)
4*pi^2/45

#3
hist(A, prob = TRUE, nclass = 50)
f = function(a) 1/(2*sqrt(pi*a))
curve(f, add = TRUE)

#Alternativt:
x = seq(0,3.2, 0.01)
y = 1/(2*sqrt(pi*x))
lines(x,y)

















