library(ggplot2)
eudf <- as.data.frame(EuStockMarkets)
#lineplot
a <- ggplot()+ geom_line(data = eudf,aes(x=c(1:nrow(eudf)),y=DAX),size=0.5,colour="red")+ geom_line(data = eudf,aes(x=c(1:nrow(eudf)),y=SMI),size=0.5,colour="blue") + xlab("Time")+ ylab("Stocks")
print(a)
#linear regression plot1
b <- ggplot(mtcars,aes(x=mpg,y=wt))+geom_point(shape=19)+geom_smooth(method="lm",se=FALSE,color="blue")
print(b)
#linear regression plot2
c <- ggplot(mtcars,aes(x=mpg,y=wt,shape=cylFact,color=cylFact))+geom_point(shape=19)+geom_smooth(method="lm",se=TRUE,color="red")+xlab("Miles per gallon")+ylab("Weight")+labs(color="cylinder")+ggtitle("Linear Regression Model")
print(c)
#gaussian model
d<-ggplot(mtcars,aes(x=mpg,y=wt,shape=cylFact,color=cylFact))+geom_point(shape=19)+geom_smooth(method="auto",se=TRUE,color="black")+xlab("Miles per Gallon")+ylab("Weight")+labs(color="cylinder")+ggtitle("Guassian Regression")
print(d)