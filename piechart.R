  library(ggplot2)
  #bar graph
  qplot(mtcars$cyl,geom="bar",fill=I("blue"),colour=I("red"),xlab="cylinders",ylab="no.of vehicles",main="Cylinders in a vehicle",binwidth=1)
  #histogram
  qplot(mtcars$hp,geom="histogram",colour=I("red"),fill=I("pink"),xlab="Horsepower",ylab="No.of cars",main="Histogram",binwidth=10,alpha=I(27),xlim = c(50,200))
  #pie chart
  #stack bar plot(vertical)
  piec <- ggplot(mtcars,aes(x=0.5,y=sort(mtcars$carb),fill=sort(mtcars$carb))) + geom_bar(stat="identity") 
  #to make stack bar plot a pie chart
  piec<- piec + coord_polar(theta='y')
  # to clear the texts
  piec<- piec + theme(axis.line = element_blank()
                      , axis.text.x = element_blank()
                      , axis.text.y = element_blank()
                      , axis.ticks = element_blank()
                      , axis.title = element_blank()
                      , panel.background = element_blank())+labs(y="carbulator")
  print(piec)