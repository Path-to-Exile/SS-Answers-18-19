n = 10000
U<-runif(n)
Y<-rep(NA,n)
Y[U<0.5]<-sqrt(2*U)[U<0.5]
Y[U>0.5]<-(1/sqrt(2-2*U))[U>0.5]
summary(Y)
hist(Y,breaks=700,prob=TRUE, xlim = c(0,6))
hist(Y,breaks=700,prob=TRUE)

U<-runif(10000) 
Y<-rep(NA,10000) 
Y[U<0.5]<-sqrt(2*U[U<0.5]) 
Y[U>0.5]<-1/(sqrt(2*(U-1)))[U>0.5]

mean(Y)
var(Y)


