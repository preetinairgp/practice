#Question2

# #1. Create an R script within this directory that reads the Sydney
# coronavirus data and plots the number of hospital beds needed
# between July and December of 2020.
# version control 2

getwd()


setwd("C:/Users/Preeti/OneDrive/Documents/practice")
c <- read.csv("epiSEIHCRD_combAge.csv")

c$t <- as.Date(c$t,origin="2020-03-01")

library("ggplot2")
library("tidyverse")
c %>% filter((c>="2020-07-01")&(c<="2020-02-31"))

g <- ggplot(data=c)

g <- g+geom_line(mapping=aes(x=t,y=H))+
   scale_x_date(date_labels = "%d %b %Y")
print(g)


# Question3: Updating Scripts


g <- g+geom_line(mapping=aes(x=t,y=H),colour="red")+
   scale_x_date(date_labels = "%d %b %Y")+scale_y_log10()+
   labs(x="Date", y="no. of hosp beds", title="sydney hosp detail")
print(g)




