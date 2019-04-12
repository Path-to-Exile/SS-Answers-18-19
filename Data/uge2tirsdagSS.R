#Sæt working directory, hvis man kun bruger R til en ting, f.eks. kun til SS
#er det måske lettere at sætte et deafualt directory under preferences. 
setwd("/Users/Svesketerning/Google Drev/SS, 18-19/Data")

#SS.3

#Indlæs data og se det henne i environment vinduet. 
#Kan bruges til at overskuen ens data og tjekke om der er noget galt.
#Bemærk det lille spreadsheet lignende ikon der åbner en seperat fane med dataet.
myData <- read.table("ss18-19-udenhold.txt", header=TRUE)

head(myData) #Giver dig de første indgange i datasættet. Fint til at få et overblik
summary(myData) #Giver dig en oversigt dataet
Sek #man kunne enten skrive myData$sek eller brug attach(mydata) 
attach(myData)
#Sek
myData$Sek #Her bliver der brugt $ metoden
hist(myData$Sek) ## Er det nogenlunde som du ville forvente? 
mean(myData$Sek) ## Dette giver NA fordi der er manglende værdier
mean(myData$Sek, na.rm=TRUE) ## Gennemsnit af ikke-manglende værdier

#SS.4

#vi kopierede data fra opgaven
R <- c(2.27, 1.98, 1.69, 1.88, 1.64, 2.14)
H <- c(8.28, 8.04, 9.06, 8.70, 7.58, 8.34)
#vi laver en ny variabel 
#personligt kan jeg godt lide at lave lidt længere variabel navne,
#det er meget lettere at indse hvad dataet indeholde 
#- især hvis man også skal kigge på det senere
rumfang_kegler = 1/3*pi*R^2*H
rumfang_kegler
#Vi udregner mean og median

mean(rumfang_kegler) #giver os gennemsnittet
median(rumfang_kegler) #giver os medianen.

#Vi bruger vinket og [] notation.
mean(rumfang_kegler[H<8.5])

##SS.5

#1
#Sandsynligheden for at få 8 (PMF, sandsynlighedsfunkion) 
#(Bemærk forskellen på PDF og PMF. Næsten det samme. 
#PDF er for en kontinuert fordeling, mens PMF er for en diskret)
dbinom(8,size = 33, prob = 0.18)
?dbinom
#fordelingsfunktion, sandsynlighed for at få noget svagt mindre end 6
pbinom(6,size = 33, prob = 0.18)

#2
#samme opgave som 1, nu med X - HGeom(17,10,5)
#sandsynlighed for at få 3
dhyper(3, m = 17, n = 10, k = 5)
?dhyper
#bemærk det nu er skarpt større, således
1-phyper(1, m = 17, n = 10, k = 5)

#3 Se pdf






