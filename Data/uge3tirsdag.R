#SS.13
#1
#Simulerer 10000 terninge slag (teknisk set er det 20000 terningeslag 
#da vi b??de har et X og Y.)
n = 10000
X <- sample(1:5, n, replace = TRUE)
Y <- sample(1:5, n, replace = TRUE)
Z <- abs(X-Y)
table(Z)
#2
#Ligesom i fredags kan vi udregne gennemsnittet vha. table. 
#Vi dividerer med n for at f?? den relative frekvens.
table(Z)/n
#Vi kan tjekke med de teoretiske v??rdier, det ser ud til at passe rimelig godt.
5/25 #Z=0
8/25 #Z=1
6/25 #Z=2
4/25 #Z=3
2/25 #Z=4
#I PDF
#4 Vi bruger pseudo koden fra opgave teksen
X1 <- sample(1:5, n, replace = TRUE)     ## 100000 kast med terningen
X2 <- sample(1:5, n, replace = TRUE)     ## 100000 kast med terningen
W <- rep(NA, 100000)
W[X1>2.5] <- X1[X1>2.5]
W[X1<2.5] <- X2[X1<2.5]
mean(X1)
mean(W)
#5
#Vi bruger den ny strategi hvor vi ogs?? forkaster 3 og f??r, 
#hvor vi kalder variablen 
#Q nu.
Q = rep(NA, 100000) 
Q[X1>3.5] <- X1[X1>3.5]
Q[X1<3.5] <- X2[X1<3.5]
mean(Q)
#6
#Sidste strategi hvir vi kun beholder 5 Dette bliver hvor vi kalder den V. Vi f??r 
V = rep(NA, 100000) 
V[X1==5] = X1[X1==5]
V[X1<5] = X2[X1<5]
mean(V)
#hvilken strategi er s?? bedst? Det ser klart ud til strategi 3 eller 2. 
#Hvilken en er det s?? bedst? De er faktisk ens, hvilket kommer af EW_1=3. 
