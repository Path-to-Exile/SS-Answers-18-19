#August 2015, opgave 4

#1
setwd("/Users/Svesketerning/Google Drev/SS, 18-19/ss-data")
norrebro = read.table("norrebro.txt", header = TRUE)

mean(norrebro$areal)
#Vi udregner gennemsnittet af areal, vi f??r 69,55. Svaret er C.

#2
model1 = lm(pris ~ areal, data = norrebro)
summary(model1)
#Vi laver modellen og f??r svaret til D
#Responsvariablen er p?? vensreside af ~ mens den forklarende er p?? h??jre side. Se side. 144

#3
confint(model1, level = 0.95)
#man bruger confint n??r man har lin??ere modeller, 
#n??r konfidensintervaller skal bruges. deafult er 0.95, men det kan ??ndres vha. level
#Svaret er da C

#4
#I f??lge vores model er er \beta lidt under 40k, s?? vi forventer en forskel p?? lidt under 400k, dvs. D

#5
#Da vi lavede et summary tidligere, f??r vi en en del af outputtet der hedder
#Residual standard error: 555900 on 160 degrees of freedom. 
#Spredningen er resdiual standard error, s??ledes f??r vi at A er svaret

#6
coef(model1)
-281871.88+39761.72*55
#ca. 1,9 mil. C

#7
#Vi laver residualer, se evt. side 147
plot(fitted(model1),rstandard(model1))

#8
#Middelv??rdi antagelsen ser god ud. 
#Det er ikke nogen systematik i om residualerne ligger over eller under x=0
#Det ligner dog lidt vi har en trumpet form. Antagelsen om varians er derfor ikke s?? sikker.
#Variationen i pris er lille for sm?? lejligheder, men stor for store lejligheder. 

#SS.33

#1-2
#lige lavet

#3
newdata = data.frame(areal=c(55))
predict(model1, newdata, interval = "confidence")
predict(model1, newdata, interval = "predict")
#Vi ser at pr??diktionsintervallet er bredere end konfindesintervallet, hvilket er forventeligt
#Fortolkning? Pr??ciktions: 95% interval for hvad fremtidige observationer vil ligge inde i
#Konfidens? Samme som i nadre modeller. Giver vi gentager fors??get en del gange,
#s?? vil omtrent 95% af intervallerne indeholde det sande gennemsnit
#Hovedpointe: Pr??diktionsintervaller fort??ller noget om fordelingen af variable, 
#ikke usikkerheden om dataets gennemsnit.
#Pr??diktionsintervaller skal b??de tage h??jde for usikkerheden omkring det sande gennemsnit 
#og naturlig variation, hvilket er den intuitive grund til pr??diktionsintervaller er st??rre end konfidens.

#4
#Vi konkluderede lige modellen var lidt usikker ift. til varians. men.
#2,7 er ikke i KI, men er i vores PI. S?? helt dumt er det nok ikke.

#April 2016, opgave 4

#1
gasdata = read.table("gasData.txt", header = TRUE)
mean(gasdata$temp)
#Svar: C
#2 s.144
model2 = lm(gas ~ temp, data = gasdata)
plot(fitted(model2),rstandard(model2))
abline(0,0)
#3
#Det er ingen trumpet form som i opgaven f??r eller nogen i den stil, variansantagelsen ser derfor OK ud.
#Der er heller ikke tendens ift. om residualerne ligger over eller under x=0, middelv??rdiantagelsen er derfor ogs?? OK

#4
summary(model2)
#Vi afl??ser: D er svaret.

#5
confint(model2, level = 0.95)
#C

#6
confint(model2, level = 0.9)
#D

#7
#Vi kvadrerer Residual stan error
8.375^2
#A

#8
newdata2 = data.frame(temp = c(5))
predict(model2, newdata2, interval = "confidence")
#D

#9
#Vi laver en pr??diktionsinterval
newdata3 = data.frame(temp = c(2))
predict(model2, newdata3, interval = "predict")
#Vi ser at 180 er i god overenestemmelse med observeret data. A.

#10
#S??tning 6.4, vi isolerer SPD. Se PDF
ssd = sum((gasdata$temp-mean(gasdata$temp))^2)
ssd
ssd*-11.0142

#evt disse:
var(gasdata$temp)*25
var(gasdata$temp)*(26-1)*(-11.0142)





















