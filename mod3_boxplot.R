library(ggplot2)
library(plotly)
set.seed(1234)
#creating 2 sets
set_a <- rnorm(200,mean=1,sd=2)
set_b<- rnorm(200,mean=0,sd=1)
#creating data frame with these 2 sets and columns label and values,where label
#shows whether value part of set A or set B and value shows the values of set_a 
#and set_b
df <- data.frame(label = factor(rep(c("A","B"),each=200)),value = c(set_a,set_b))
ggplot(df,aes(x=label,y=value))+ geom_boxplot()
#to show the plot
ggplotly()