fvm2 <- read.csv("fvm2.csv")

fvm2$RR <- fvm2$Rating * fvm2$Reviews

fvm2$RR

fvm2$RatInst <- fvm2$Rating * fvm2$Installs

fvm2$RatInst

fvm2$InstRev <- fvm2$Installs * fvm2$Reviews

fvm2$InstRev

write.csv(fvm2, "fvm3.csv", row.names = F)
