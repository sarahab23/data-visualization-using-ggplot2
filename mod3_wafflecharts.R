library(ggplot2)
library(waffle)
library(devtools)
library(IRkernel)
expenses <- c(`shelter($4,25,367)`=425367,`food($2,33,405)`=233405,`clothes($89,405)`=89405,
              `education($95,000)`=233405,`transportation($9,278)`=9278)
#to increase size of waffle chart,not working??
IRkernel::set_plot_options(width=950,height=600,units='px')
#waffle chart
waffle(expenses/1234,size=0.3,rows=5,
       colors = c("#009999", "#0000FF","#c7d4b6","#a3aabd","#009933"),
       title = "My expenses in a year")