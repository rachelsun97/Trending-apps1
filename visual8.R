finalvisual <- read.csv("finalvisual.csv")

# change "Varies with device" to NA
finalvisual$Android.Ver[finalvisual$Android.Ver == "Varies with device"] <- NA
finalvisual$Android.Ver <- as.numeric(as.character(finalvisual$Android.Ver))

## change NAs to mean value for category
finalvisual$Category <- as.character(finalvisual$Category)
unique(finalvisual$Category)

# temporary dataframe so that i don't fuck up the original one
yo <- google

library(dplyr)

# table of means per category
meanz <- finalvisual %>% group_by(Category) %>% summarize(Mean = mean(Android.Ver, na.rm=TRUE))
meanz$Category <- as.character(meanz$Category)

# iterate through each category and replace NA for that category with the mean value for that category
for(i in unique(finalvisual$Category)){
  finalvisual$Android.Ver[finalvisual$Category==i] <- ifelse(is.na(finalvisual$Android.Ver[finalvisual$Category==i]), mean(finalvisual$Android.Ver[finalvisual$Category==i],na.rm=T), finalvisual$Android.Ver)
}

finalvisual$Android.Ver<-round(as.numeric(finalvisual$Android.Ver), 0)

finalvisual$Android.Ver

write.csv(finalvisual, "finalvisualmean.csv", row.names = F)

