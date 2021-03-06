library(ggplot2)
qplot(mpg,wt,data=mtcars)
ggplot(mtcars,aes(x=mpg,y=wt))+geom_point(shape=10,color="blue")
mtcars$cylFact = factor(mtcars$cyl)
ggplot(mtcars,aes(x=mpg,y=wt,shape=cylFact))+geom_point(color="blue")
ggplot(mtcars,aes(x=mpg,y=wt,shape=cylFact,color=cylFact))+geom_point(shape=19)+labs(colour = "Cylinders")+ xlab("Miles per gallon")+ylab("Weight")+ggtitle("Scatterplot")