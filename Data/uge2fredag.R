
setwd("/Users/Svesketerning/Google Drev/SS, 18-19/Data")

#SS.7
#2
#Vi bruger samme kommando som fra i tirsdags.
#Dette bliver:
dhyper(10, m = 38, n = 62, k = 25) #Sandsynlighed for 10 kvinder
#3
#Igen bruger vi samme kommando som fra i tirsdags, phyper
phyper(8, m = 38, n = 62, k = 25) #sandsynlighed for f??rre eller lig med 8 kvinder
#4
#Igen bruger vi samme kommando som fra i tirsdags, phyper, vi husker at det 1-hyper
#bem??rk at hypergeometrisk fordeling er diskret, s??ledes punktfordelinger er ikke-trivielle. 
#Vi skriver derfor 12, ikke 13, for at f?? ulighederne til at passe.
1-phyper(12, m = 38, n = 62, k = 25) #sandsynlighed for 13 eller flere kvinder
phyper(12, m = 38, n = 62, k = 25, lower.tail = FALSE)
#6 
#Det er en Bin fordeling med p = 0,25 og n = 38. Vi udregender det samme som ovenfor
dbinom(10, size = 38, prob = 0.25) #Sandsynlighed for 10 kvinder
pbinom(8, size = 38, prob = 0.25) #sandsynlighed for f??rre eller lig med 8 kvinder
1-pbinom(12, size = 38, prob = 0.25) #sandsynlighed for 13 eller flere kvinder
pbinom(12, size = 38, prob = 0.25, lower.tail = FALSE) #evt i stedet for 1-pbinom
#SS.8

#4
n <- 1000000
      X1 <- sample(1:6, n, replace=TRUE)
      X2 <- sample(1:6, n, replace=TRUE)
      X3 <- sample(1:6, n, replace=TRUE)
      S <- X1+X2+X3
      table(S)
      table(S) / n
      mean(S==18) 
      S==18
      1/216
      #S er en vektor med 10000 indgange. == tager allle de ud der er lig med 18, 
      #resten bliver false. 
      #mean tager s?? gennemsnittet er alle dem der er true, 
      #hvilket lige pr??cis er den relative frekvens af summen 18.

#5

mean(X1 == 1 & S == 5) / mean(S == 5)       ## Metode 1
table(X1[S == 5])/sum(S == 5)				## Metode 2 
#(Her kan vi ogs?? se ssh. for at terningen er 2 eller 3)
mean(X1[S == 5] == 1)        			    ## Metode 2 alternativt 
# Ikke helt 1/2, men det er ogs?? forventeligt da vi 'kun' har 10k udfald.

#6

mean(X1[S == 10] >= 4) #Man kan bruge st??rre og mindre end nemt i R.
mean(X1[S <= 12] <= 4) 

#BH 3.17
pbinom(100, size = 110, prob = 0.9)
pbinom(100, size = 110, prob = 0.9, lower.tail = FALSE)
1-pbinom(100, size = 110, prob = 0.9)


