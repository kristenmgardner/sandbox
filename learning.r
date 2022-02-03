#import csv from desktop and give alias
ageandheight2 <- read.csv("~/Desktop/ageandheight2.csv")

#import packages
install.packages("tidyverse")
library(tidyverse)

#create regression with dataset & print out summary
lmheight = lm(height~age, data = ageandheight2)
summary(lmheight)

#plot data with regression
ggplot(ageandheight2, aes(x = age, y = height)) 
+ geom_point() 
+ geom_smooth(method = "lm", se = FALSE)
