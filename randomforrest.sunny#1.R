

############ RANDOM FORREST ################
#https://datascienceplus.com/random-forests-in-r/
############################################
rtdat<- data.frame(dat1$Rating, dat1$Reviews, dat1$Size, dat1$Installs,dat1$Type, dat1$Price, dat1$Content.Rating, dat1$Last.Updated, dat1$Android.Ver)


require(randomForest)
require(MASS)#Package which contains the Boston housing dataset
set.seed(101)
dim(rtdat)


#training Sample with 300 observations
train= sample(1:nrow(rtdat),6000)

# We will use all predictors in the dataset 
ratings.rf=randomForest( rtdat$dat1.Rating ~ . , data = rtdat , subset = train)
ratings.rf

plot(ratings.rf)
#This plot shows the Error and the Number
#of Trees. We can easily notice that how 
#the Error is dropping as we keep on adding
#more and more trees and average them.

#Yes %explained variance is a measure of how
#well out-of-bag predictions explain the target
#variance of the training set. Unexplained 
#variance would be to due true random behaviour
#or lack of fit.
# This is the R^2 value in a simple linear model, which is equal to the squared correlation coefficient.

ob.err=double(8)
test.err=double(8)

#mtry is no of Variables randomly chosen at each split
for(mtry in 1:8) 
{
  rf=randomForest(rtdat$dat1.Rating ~ . , data = rtdat , subset = train,mtry=mtry,ntree=6000) 
  ob.err[mtry] = rf$mse[6000] #Error of all Trees fitted
  
  pred<-predict(rf,rtdat[-train,]) #Predictions on Test Set for each Tree
  test.err[mtry]= with(rtdat[-train,], mean( (rtdat$dat1.Rating - pred)^2)) #Mean Squared Test Error
  
  cat(mtry," ") #printing the output to the console
  
}


matplot(1:mtry , cbind(ob.err,test.err), pch=19 , col=c("red","blue"),type="b",ylab="Mean Squared Error",xlab="Number of Predictors Considered at each Split")
legend("topright",legend=c("Out of Bag Error","Test Error"),pch=19, col=c("red","blue"))


