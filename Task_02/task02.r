setwd("C:\\Users\\bdb00009\\Desktop\\Evolution\\Tasks\\Task_02")
Data1 <- read.csv ("http://jonsmitchell.com/data/beren.csv", stringsAsFactors=F)
Data1
length(Data1)
nrow(Data1)
ncol(Data1)
colnames(Data1)
head(Data1)
Data1[1 ,]
Data1[2 ,]
Data1[1:3 ,]
Data1[1:3 , 4]
Data1[1:5 , 1:3]
Feeds <- which(Data1[,9] == 'bottle')
berenMilk <- Data1[Feeds ,]
head(berenMilk)

Feeds <- which(Data1[, "event"] == 'bottle')
Feeds <- which(Data1$event == 'bottle')
dayID <- apply(Data1 , 1, function(x) paste(x[1:3] , collapse='-'))
dateID <- sapply(dayID , as.Date , format = "%Y-%m-%d" , origin = "2019-04-18")
Data1$age <- dateID - dateID[which(Data1$event == 'birth')]
head(Data1)
beren2 <- Data1
beren3 <- beren2[order(beren2$age) ,]
head(beren2)
head(beren3)
write.csv(beren3 , 'beren_new.csv' , quote=F, row.names=FALSE)
Feeds <- which(beren3$event == "bottle")
aveMilk <- mean(beren3$value[Feeds])
aveFeed <- tapply(beren3$value[Feeds] , beren3$age [Feeds] , mean)
head(aveFeed)
head(Data1)
varFeed <- tapply(beren3$value[Feeds] , beren3$age[Feeds] , var)
totalFeed <- tapply(beren3$value[Feeds] , beren3$age[Feeds] , sum)
numFeeds <- tapply(beren3$value[Feeds] , beren3$value[Feeds] , length)
numFeeds <- tapply(beren3$value[Feeds] , beren3$age[Feeds] , length)
cor(beren3$value[Feeds], beren3$age[Feeds])
cor.test(beren3$value[Feeds] , beren3$age[Feeds])
#berenCor <- cor.test(beren3$value[Feeds])
berenCor <- cor.test(beren3$value[Feeds] , beren3$age[Feeds])
summary(berenCor)
berenANOVA <- aov(beren3$value[Feeds] ~ beren3$caregiver[Feeds])
boxplot(beren3$value[Feeds] ~ beren3$caregiver[Feeds] , xlab= "who gave the bottle" , ylab= "amount of milk consumed (oz)")

#par(1as=1, mar=c(5, 5, 1, 1) , mgp=c(2, 0.5, 0) , tck=-0.01)
par(las =1, mar=c(5,5,1,1), mgp=c(2,0.05,0), tck=-0.01)
plot(as.numeric(names(totalFeed)), totalFeed , type="b" , pch=16, xlab="age in days" , ylab="ounces of milk")
abline(h=mean(totalFeed) , lty=2, col='red')

pdf("r02b-totalMilkByDay.pdf" , height = 4, width = 4)
par(las=1, mar=c(5,5,1,1) , mgp=c(2,0.5,0) , tck=-0.01)
plot(as.numeric(names(totalFeed)),totalFeed, type="b", pch=16, xlab="age in days" , ylab="ounces of milk")
abline(h=mean(totalFeed), lty=2, col="red")
dev.off()
source("http://jonsmitchell.com/code/plotFxn02b.R")
#save("r02b-cumulataiveMilkByTime.pdf")
plot(xlab="age of Beren", ylab="mass of Beren")

### this is a comment, R won't read it, it's just for you
### this can help take notes about what code is doing
# read in cyrus data
Data2 <- read.csv ("http://jonsmitchell.com/data/cyrus.csv", stringsAsFactors=F)

# get Cyrus's age
dayID2 <- apply(Data2, 1, function(x) paste(x[1:3], collapse="-"))
dateID2 <- sapply(dayID2, as.Date, format="%Y-%m-%d", origin = "2022-04-12")
Data2$age <- dateID2 - dateID2[which(Data2$event == "birth")]

cMassRows <- which(Data2[, 'event'] == 'trait_mass')
cyrusMass <- Data2[cMassRows, "value"]
cyrusAges <- Data2[cMassRows, "age"]
plot(berenAges, berenMass, col='red', pch=19)
points(cyrusAges, cyrusMass/1000, col='blue', pch=16)

I did not get to attempt the extra credit but I think your baby will weigh 27.2 pounds
