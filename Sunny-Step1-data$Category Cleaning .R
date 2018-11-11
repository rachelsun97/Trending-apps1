
#TOOLS 
# double check to delete all data with emppty sets 
head(data_1)
ncol(data_1)
#double checking for empty values 
row_to_keep = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)
data_1= data_1[row_to_keep]
nrow(data_1)#how many rows



# DATA CLEANING STARTS FROM HERE

library(tidyr)
library(dplyr) 
install.packages("tidyverse")

setwd("~/Desktop/DATA SCIENCE PROJECT #1/google-play-store-apps")

#allowing data to be fixed
data_1<-read.csv("newsizecolumn.csv")

#Simple Horizontal Bar Graph with Added Labels 
data_1Cat<- table(data_1$Category)
barplot(data_1Cat, main= "Data1: Categories checking for Null" )
# We use the built-in unique() function to extract the unique colors in our dataset
unique(data_1$Category)
#checking which row has 1.9 as category 
which(data_1$Category == 1.9)  #found out that the category for 1.9 should be replaced by LIFESTYLE 
#printing the whole row 
data_1[10473,]
data_1$Category[data_1$Category=="1.9"]<-"LIFESTYLE" 
#double checking
names(data_1)
write.csv(data_1, file = "Dataforregression.csv")






