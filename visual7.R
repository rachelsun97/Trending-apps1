#read csv in R
visual7 <- read.csv("visual7.csv")

visual7$Android.Ver <- as.character(visual7$Android.Ver)

unique(visual7$Android.Ver)

visual7$Android.Ver <- gsub("4.0.3 and up", "403", visual7$Android.Ver)
visual7$Android.Ver <- gsub("4.4 and up", "440", visual7$Android.Ver)
visual7$Android.Ver <- gsub("4.2 and up", "420", visual7$Android.Ver)
visual7$Android.Ver <- gsub("2.3 and up", "230", visual7$Android.Ver)
visual7$Android.Ver <- gsub("4.1 and up", "410", visual7$Android.Ver)
visual7$Android.Ver <- gsub("2.0 and up", "200", visual7$Android.Ver)
visual7$Android.Ver <- gsub("5.0 and up", "500", visual7$Android.Ver)
visual7$Android.Ver <- gsub("4.0 and up", "400", visual7$Android.Ver)
visual7$Android.Ver <- gsub("3.2 and up", "302", visual7$Android.Ver)
visual7$Android.Ver <- gsub("3.0 and up", "300", visual7$Android.Ver)
visual7$Android.Ver <- gsub("2.1 and up", "210", visual7$Android.Ver)
visual7$Android.Ver <- gsub("1.6 and up", "160", visual7$Android.Ver)
visual7$Android.Ver <- gsub("7.1 and up", "710", visual7$Android.Ver)
visual7$Android.Ver <- gsub("8.0 and up", "800", visual7$Android.Ver)
visual7$Android.Ver <- gsub("3.1 and up", "310", visual7$Android.Ver)
visual7$Android.Ver <- gsub("4.1 - 7.1.1", "410", visual7$Android.Ver)
visual7$Android.Ver <- gsub("5.0 - 6.0", "500", visual7$Android.Ver)
visual7$Android.Ver <- gsub("2.3.3 and up", "233", visual7$Android.Ver)
visual7$Android.Ver <- gsub("4.3 and up", "430", visual7$Android.Ver)
visual7$Android.Ver <- gsub("2.2 and up", "220", visual7$Android.Ver)
visual7$Android.Ver <- gsub("6.0 and up", "600", visual7$Android.Ver)
visual7$Android.Ver <- gsub("1.5 and up", "150", visual7$Android.Ver)
visual7$Android.Ver <- gsub("7.0 and up", "700", visual7$Android.Ver)
visual7$Android.Ver <- gsub("5.1 and up", "510", visual7$Android.Ver)
visual7$Android.Ver <- gsub("2.0.1 and up", "210", visual7$Android.Ver)
visual7$Android.Ver <- gsub("1.0 and up", "100", visual7$Android.Ver)
visual7$Android.Ver <- gsub("4.0.3 - 7.1.1", "403", visual7$Android.Ver)
visual7$Android.Ver <- gsub("7.0 - 7.1.1", "700", visual7$Android.Ver)
visual7$Android.Ver <- gsub("5.0 - 8.0", "500", visual7$Android.Ver)
visual7$Android.Ver <- gsub("4.4W and up", "440", visual7$Android.Ver)


visual7$Android.Ver

unique(visual7$Android.Ver)