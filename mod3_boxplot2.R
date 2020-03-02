library(ggplot2)
summary(mtcars)
#basic boxplot
qplot(factor(cyl),mpg,data = mtcars,geom = "boxplot")
#boxplot
ggplot(mtcars,aes(x=factor(cyl),y=mpg)) + geom_boxplot()