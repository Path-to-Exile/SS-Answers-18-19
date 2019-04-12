
setwd("/Users/Svesketerning/Google Drev/SS, 18-19/ss-data")

#SS.30

#1

oplosdata = read.table("oplosningsmiddel.txt", header = TRUE)
head(oplosdata)
aromdata <- subset(oplosdata, oplos=="Arom")
klordata <- subset(oplosdata, oplos=="Klor")

#2
#Vi udregner gns. og empirisk varians for de 2
x_bar = mean(aromdata$rate)
x_bar
s2_x = var(aromdata$rate)

y_bar = mean(klordata$rate)
y_bar
s2_y = var(klordata$rate)

#Vi bruger formel 5.2
n_x = nrow(aromdata)
n_y = nrow(klordata)
n = nrow(oplosdata)

s2 = ((n_x-1)*s2_x+(n_y-1)*s2_y)/(n-2)
s2
#3
x_bar-y_bar - qt(p = 0.975, df = (n-2))*sqrt(s2)*sqrt(1/n_x+1/n_y)
x_bar-y_bar + qt(p = 0.975, df = (n-2))*sqrt(s2)*sqrt(1/n_x+1/n_y)

qt(p = 0.975, df = (n-2))
#4
#Da 0 ligger i vores 95% konfidens interval er der ikke evidens for der er forskel.
#eks.5.8

#5

t.test(aromdata$rate, klordata$rate, var.equal=TRUE)

#6

t.test(rate ~ oplos, data=oplosdata, var.equal=TRUE)

#Januar '16 opg. 3

#1

vgt = read.table("vgtdata.txt", header = TRUE)
head(vgt)
#Vi bruger nrow kommandown til at finde antallet af r??kker
#og dermed antallet af b??rn
nrow(vgt)
#Svaret er 437, dvs A

#2
qqnorm(vgt$forskel)
qqline(vgt$forskel)
#De ligger omkring en ret linje, normalfordelingsantagelsen er derfor ok

#3
mean(vgt$forskel)
var(vgt$forskel)
#Svaret er alts?? B

#4
#Vi kan bruge en t.test
t.test(vgt$forskel)

#Vi f??r da svaret til D

#5
#Svaret er C, da 0 er er i vores 95% konfidensinterval.

#6
#Se pdf

#7
#se pdf
pnorm(1.333101)-pnorm(-1.276227)
#Evt smid sprednig og varians direkte ind.

#SS.31

stud_data = read.table("studdata-renset.txt", header = TRUE)
head(stud_data)

#1
#Vi bruger t.test, den giver default et 95% konfidensinterval.
t.test(stud_data$figur1)

#2
#86 er vigtig idet det er det faktiske antal punkter p?? figur1. 
#Ja, det tyder p?? folk har g??ttet korrekt.

#3
qqnorm(stud_data$figur1)
#Dette ser ikke s?? godt ud, 
#men parabel formen antyder at det m??ske hj??lper at log-transformere.

qqnorm(log(stud_data$figur1))
#Dette ser noget bedre ud.
#Det vides ikke pr??cist hvordan folk har besvaret p?? dette, 
#men da det har v??ret i en forl??sningssal 
#kan det meget vel v??re a folk har snakket en lille smule sammen. 
#M??den et fors??g af denne type burde 
#udf??res p?? vile v??re at sp??rge personer enkeltvis uden kontakt med andre.

#4
t.test(log(stud_data$figur1))

#5
#Vi tager nu log(86).
log(86)

#6
exp(4.373033)
#KI
exp(4.318118)
exp(4.427949)

#7
t.test(log(stud_data$figur2))
log(142)

t.test(log(stud_data$figur3))
log(47)
















