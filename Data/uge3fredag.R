#1 Du kan ogs?? regne dem med de pr??cise fraktiler vha. qnorm.
#Bem??rk at du skal bruge 0,025 og 0,975 fraktilen 
#da der skal v??re 95% sandsynlighedsmasse i mellem de to punkter.
qnorm(0.025, mean = 10, sd = 3)
qnorm(0.975, mean = 10, sd = 3)
#Du kan tegne den i h??nden, eller lade R tegne den for dig
x = seq(0,20, length = 100)
normal_dist = dnorm(x, mean = 10, sd = 3)
plot(x, normal_dist, type = "l")

#2
#Husk p?? at R er programmet lidt dumt, s??ledes du skal skrive spredningen ikke variansen ind!
dnorm(6, mean = 10, sd = 3)
#3
pnorm(12, mean = 10, sd = 3) #P(X<=12)
1-pnorm(14, mean = 10, sd = 3) #P(X>13)
pnorm(14, mean = 10, sd = 3, lower.tail = FALSE) #alternativt
#skitser p?? din tegning.