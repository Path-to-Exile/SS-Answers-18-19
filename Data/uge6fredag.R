#HS 1.3

#4
#Vi bruger pbinom
#Mindst 8 aktier faldet (kunne ogs?? bruge tail false)
1-pbinom(8, size = 10, p = 1/2)
#H??jest 8:
pbinom(8, size = 10, p = 1/2)

#SS.29

#2 Vi laver konfidensinterval s.37 (3.5) giver dig interval og 3.3 giver estimatoren,
#hvilket er givet i opgaven.
mu_hat2 = 36.805
#spredning er
sd_mu = 0.4/sqrt(130)
#vi f??r
mu_hat2 + qnorm(0.975)*sd_mu
mu_hat2 - qnorm(0.975)*sd_mu

#3
#Da 37 ikke ligger ikke intervallet, er det usandsynligt at gns. temperaturen er 37 grader. 

#Vores H_0 er: Gennemsnitstemparaturen for raske personer er 37 grader.
#Vi f??r et interval p?? (36,73;36,88), 
#vi kan derfor afkr??fte p?? et 95% konfidensniveau at antagelsen om H_0 ikke holder. 

#4
#Vi laver ogs?? 90% konfindensinterval. Det eneste man skal huske er at ??ndre fraktilen. 
#Husk der skal v??re 5% p?? hver side, s?? vi skal bruge 95% fraktilen.
mu_hat2 + qnorm(0.95)*sd_mu
mu_hat2 - qnorm(0.95)*sd_mu
#Vi f??r alts??, meget naturligt, et mere sn??vert interval.
qnorm(0.95)
#4.1

#2
setwd("/Users/Svesketerning/Google Drev/SS, 18-19/ss-data")

#Vi indl??ser dataet 
reaktionstid_data = read.table("reaktionstid.txt", header = TRUE)
attach(reaktionstid_data) #Vi bruger attach her. Ikke n??dvendigt, men du kan slippe for alle dollartegn.

#Med t.test, 95% er default
t.test(visuel)
#90% med conf
t.test(visuel, conf.interval = 0.9)


#SS.28
#Vi har f??et vide nettov??gten er normaltfordelt med N(520,7^2). 
#Vi bruger pnorm til at finde sandsynligheden for at v??gten er under 500 gram.

pnorm(500, mean = 520, sd = 7)
#Det er alts?? rimelig godt, da vi gerne vil have det er en lille sandsynlighed. 

#Vi finder 95% konfidensinterval. Se s??tning 3.5
mu_hat = 517.2
mu_hat + qnorm(0.975)*7/sqrt(10)
mu_hat - qnorm(0.975)*7/sqrt(10)
#Vi f??r konfidensintervallet til (512,86;521,54). 
#Det lader derfor ikke til det er fejlkalibreret. 
#Er n stort nok?










