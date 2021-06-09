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

g <- g+geom_line(mapping=aes(x=t,y=H))
print(g)






# 2. Add the script to the repository and commit the changes.
# 3. View the log message.