######## Installs taking the + sign away ########### 

setwd("~/Desktop/DATA SCIENCE PROJECT #1/google-play-store-apps")
data_1<-read.csv("newsizecolumn.csv")
library(stringr)


## extract the numeric part from Size
# change Size from a factor to a character so we can use strsplit
data_1$Installs <- as.character(data_1$Installs)
# splitting the variable by "M"
data_1$Installs = substr(data_1$Installs,1,nchar(data_1$Installs)-1)
head(data_1)
data_1$Installs<- as.factor(data_1$Installs)


#deleting a role with a category that doesn't exist 
data_1 <- data_1[-10473,] 

write.csv(data_1, file = "1visual.csv")
