#6
#Vi udnytter universality of the norm, ligesom i skal g??re i den obligatoriske 
n = 5000 #Brug ogs?? 50.000 og 500.000 og se hvad der sker
U = runif(n) 
Y = 1/(1-U)^2 #Det vi udregnede i 5
#Y = rep(NA,n) #Laver en dummy vektor, beh??ves faktisk ikke. 
#7
summary(Y)
#Det er slet ikke stabilt, hvilket da ogs?? er forventeligt.
#Vi har en udefineret middelv??rdi og kan derfor f?? arbitr??re udfald. 
#Det er derfor tilf??ldigt og vi nu f??r nogle sindsyg store v??rdier
hist(Y)
