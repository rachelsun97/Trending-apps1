##### FINAL STEP GOOD VISUALIZATION ####### 
install.packages("tidyverse")
install.packages("GGally")
install.packages("gclus")
install.packages("psych")
library(GGally)
library(ggplot2)
library(ggcorrplot)
library(psych)
library(gclus)




############
###IGNORE THIS ####
############
############
setwd("~/Documents/Data Science")
dat7<- read.csv("fvm.csv")
# 1 everyone
dat7$Content.Rating<- as.integer(dat7$Content.Rating)
dat7 = dat7[complete.cases(dat7), ]
write.csv(dat7,file="fvm2.csv")
# New data Frame with just numerical value TOOK CATEGORY OUT 
dat8<- data.frame(  dat7$Rating, dat7$Reviews, dat7$Size, dat7$Installs,dat7$Type, dat7$Price, dat7$Content.Rating, dat7$Last.Updated, dat7$Android.Ver)


##################
##################
#SIMPLE SCATTER PLOT MATRIX 
#################

# CHANGE dat8 to your dataset 

p <- ggpairs(dat8)+ theme_bw()
# Change color manually.
# Loop through each plot changing relevant scales
for(i in 1:p$nrow) {
  for(j in 1:p$ncol){
    p[i,j] <- p[i,j] + 
      scale_fill_manual(values=c("#00AFBB", "#E7B800", "#FC4E07")) +
      scale_color_manual(values=c("#00AFBB", "#E7B800", "#FC4E07"))  
  }
}
p





##########
# THIS IS THE GRAPH WITH RED POINTS = DENSITY OF POPULARITY 
##########
#########
#########
# CHANGE dat8 to your dataset 


pairs.panels(dat8, 
             method = "pearson", # correlation method
             hist.col = "#00AFBB",
             density = TRUE,  # show density plots
             ellipses = TRUE # show correlation ellipses
) 


#########
#########
#THIS IS THE COLORFUL##
#########
#########
# CHANGE dat8 to your dataset 


# Scatterplot Matrices from the glus Package 
dta.r <- abs(cor(dat8)) # get correlations
dta.col <- dmat.color(dta.r) # get colors
# reorder variables so those with highest correlation
# are closest to the diagonal
dta.o <- order.single(dta.r) 
cpairs(dat8, dta.o, panel.colors=dta.col, gap=.5,
       main="Variables Ordered and Colored by Correlation" )
