#Januar 18, 1,5
#Generelt til simulering af typen 1.5, 
#dvs, brug af 'universality of the uniform'.

n = 10000 
#Man bliver n??dt til at have mange simuleringer hvis vores resultat skal bruges. 
#10.000 virker som et fint tal. 
#Man beh??ves ikke lave en variabel med tallet 10.000 f??rst, men det g??r det lidt hurtigere at regne

U = runif(n,0,1)
#Man vil aller f??rst lave en masse standard uniforme udfald.

X = U^{1/4}
#Vi vil nu inds??tte vores inverse til vores fordelingsfunktionen. 
#Denne skal v??re en funktion af vores standard uniforme udfald.
#Bem??rk at denne funktion altid er funktion fra '(0,1) \to supporten af den stokastiske variabel'

mean(X)
var(X)
#Vi finder de empiriske v??rdier, s?? gennemsnittet og stikpr??vevariansen. 
#Disse kan sammenlignes med de teoretiske v??rdier vi udregnede tidligere 
4/5
2/75

  #SS.24

setwd("/Users/Svesketerning/Google Drev/SS, 18-19/Data")

#1
kdata = read.table("studdata-renset.txt", header = TRUE)
summary(kdata)
kdata.kvinde = subset(kdata, kon == "Kvinde")
summary(kdata.kvinde)

#2
qqnorm(kdata.kvinde$hojde)

#4 Vi bruger s??tning 3.3
n = nrow(kdata.kvinde)
mu_0 = 7
mu_hat = 1/n*sum(kdata.kvinde$hojde)
mu_hat
#Bem??rk at i HS (og helt generelt) kaldes denne variabel for mu hat (\hat{\mu}).
#(Her kunne man godt have brugt mean i stedet, men det giver lidt bedre overblik over hvad der egentlig sker p?? denne m??de)
#5 S??tning 3.5
#Vi har mu har +- den givne fraktil ganget med spredningen af mu hat
#fraktiler kan findes vha. qnorm (eller qbinom og s?? videre hvis det ikke er en normalfordeling)
#Vi har f??et til opgave at finde et 95% konfidensinterval. Dette er 1,96, men vi kan ogs?? finde det vha af R

mu_hat-qnorm(0.975)*mu_0/sqrt(n)
mu_hat+qnorm(0.975)*mu_0/sqrt(n)
#Vi har alts?? et 95% konfidensinterval p?? (166,5;169;7).

#SS.25

#2
sudoko = read.table("ss18-19-udenhold.txt", header = TRUE)

sudoko = transform(sudoko, tid = Min*60+Sek)
sudoko = transform(sudoko, logtid = log(tid))
sudoko_latin = subset(sudoko, Type == "Latinsk")
#laver transformation ligesom obl opgave + laver en kun med latin

qqnorm(sudoko_latin$tid)
qqnorm(sudoko_latin$logtid)
#qq-plots

#3
sudoko_graesk = subset(sudoko, Type == "Graesk")
#Det samme g??res for gr??ske bogstaver

qqnorm(sudoko_graesk$tid)
qqnorm(sudoko_graesk$logtid)

#4 se pdf




