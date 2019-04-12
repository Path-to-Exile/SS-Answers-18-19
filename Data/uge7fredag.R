#SS.32

#1
setwd("/Users/Svesketerning/Google Drev/SS, 18-19/ss-data")
stud_data = read.table("studdata-renset.txt", header = TRUE)

kData <- subset(stud_data, kon=="Kvinde")
mData <- subset(stud_data, kon=="Mand")

#2
figur1_k_log = log(kData$figur1)
figur1_m_log = log(mData$figur1)
qqnorm(figur1_k_log)
qqnorm(figur1_m_log)

sqrt(var(figur1_k_log))
sqrt(var(figur1_m_log))
#Dataet ser nogenlunde normalfordelt ud, lidt sjovt for m??nd.
#Hvis vi skal sammenligne to stikpr??ver 
#og antage at de har samme varians, er det vigtigt at de har samme varians.
#Vi ser det er i samme st??rrelsesorden.

#3 statistisk model, se pdf.

#4
t.test(figur1_k_log, figur1_m_log, var.equal=TRUE)
#Ja, det kunne godt tyde p?? m??nd g??tter en smule lavere end kvinder, 
#da 0 ikk er med i konfidensintervallet.

#5
#dataet var log transformeret, vi transformere det tilbage.
#Vi f??r
exp(0.03124117)
exp(0.25250882)
exp(4.458621-4.316746)
#Det estimeres at kvinder g??tter ca. 1 punkt mere end m??nd.

#6 Det gentages med figur 2 og 3

#figur 2
figur2_k_log = log(kData$figur2)
figur2_m_log = log(mData$figur2)
qqnorm(figur2_k_log)
qqnorm(figur2_m_log)

var(figur2_k_log)
var(figur2_m_log)
t.test(figur2_k_log, figur2_m_log, var.equal=TRUE)

exp(0.04109456)
exp(0.30100569)
exp(4.818231-4.647181)
#Vi f??r ca. samme resultat som ??r

#figur 3
figur3_k_log = log(kData$figur3)
figur3_m_log = log(mData$figur3)
qqnorm(figur3_k_log)
qqnorm(figur3_m_log)

var(figur3_k_log)
var(figur3_m_log)
t.test(figur3_k_log, figur3_m_log, var.equal=TRUE)

exp(0.01891474)
exp(0.19839742)
exp(3.883300-3.774644)
#Vi f??r ca. samme resultat som f??r

#August 2016, opgave 3


#1
nv_data = read.table("kvmPrisNV.txt", header = TRUE)
n_data = read.table("kvmPrisN.txt", header = TRUE)
dim(nv_data)
nrow(nv_data)
#Svaret er A

#2
mean(n_data$kvmPrisN)
var(n_data$kvmPrisN)
#A

#3
#Det letteste er en t.test.
t.test(n_data, conf.level = 0.95)
#C

#4
#Analysen om to uafh. stikrpr??ver ville v??re oplagt.
#A

#5 igen bruges en t.test.
t.test(n_data,nv_data, var.equal = TRUE)
t.test(nv_data,n_data, varequal = TRUE)
#D

#6
#t.testet tyder p?? at kvm prisen er h??jere p?? n??rrebro da 0 ikke er med i intervallet fra 5, 
#svaret er dermed D.

#7

n_n = nrow(n_data)
n_v = nrow(nv_data)
n = n_n+n_v
#s.85:
s2 = ((n_n-1)*var(n_data$kvmPrisN)+(n_v-1)*var(nv_data$kvmPrisN))/(n-2)
s2
#Svaret er C.

#April 2016, opgave 3

#1
fatty8cc<- read.table("fatty8cc.txt", header=TRUE)
creamCheese <- subset(fatty8cc$absorp, fatty8cc $type=="creamCheese")
length(creamCheese)
#Vi ser der er 8 tal, svaret er derfor D

#2
mean(creamCheese)
var(creamCheese)
#Svaret er A

#3
t.test(creamCheese)
#Svaret er alts?? B

#4
cream <- subset(fatty8cc$absorp, fatty8cc $type=="cream")
t.test(cream,creamCheese, var.equal = TRUE) 
#Svaret er A

#5
#Svaret er B, da 0 ikke er med i intervallet.

#6
#formel 5.2, s.86
SSD_cream = 7*var(cream)
SSD_creamcheese = 7*var(creamCheese)
(SSD_cream+SSD_creamcheese)/(16-2)
#Svaret er D.






