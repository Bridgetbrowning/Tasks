setwd("C:\\Users\\bdb00009\\Desktop\\Evolution\\Tasks\\Project")
data1 <- read.csv("mydata100.csv")
data1

data2 <- read.csv("larvalweight_Competency.csv")
data3 <- read.csv("Mortality_Competency.csv")
data4 <- read.csv("Weight_surv_corr_Competency.csv")
data5 <- read.csv("Moran et al PRSB dataset.csv")
head(data2)
head(data3)
head(data4)
head(data5)

head(data5)
plot(data5[,1], data5[,2], type="n")
text(data5[,1], data5[,2], sapply(data5[,11]/1e5, round, digits=3))

SeasonYear <- sapply(1:nrow(data5), function(x) paste(data5[x,"year"], data5[x,"season"], collapse="-"))
HNA_sy <- tapply(data5[,"HNA.B"], SeasonYear, mean, na.rm=T)
Temp5_sy <- tapply(data5[,"temp.5.m.E2"], SeasonYear, mean, na.rm=T)
Temp75_sy <- tapply(data5[,"temp.75.m.E2"], SeasonYear, mean, na.rm=T)

Year <- sapply(names(HNA_sy), function(x) as.numeric(strsplit(x, " ")[[1]][1]))
Season <- sapply(names(HNA_sy), function(x) as.numeric(strsplit(x, " ")[[1]][2]))

Keep <- intersect(which(Year > 2002), which(!is.na(Year)))
HNA_plot <- HNA_sy[Keep]
Year_plot <- Year[Keep]
Season_plot <- Season[Keep]
Temp5_plot <- Temp5_sy[Keep]
Temp75_plot <- Temp75_sy[Keep]


Colors <- c('#a6cee3','#1f78b4','#b2df8a','#33a02c','#fb9a99','#e31a1c','#fdbf6f','#ff7f00','#cab2d6','#6a3d9a')
barplot(HNA_plot~Year_plot+Season_plot, beside=T, col=Colors)
anova_by_season <- aov(data5[,"HNA.B"]~data5[,"season"])

par(mfrow=c(1,2))
Colors <- c('#a6cee3','#1f78b4','#b2df8a','#33a02c','#fb9a99','#e31a1c','#fdbf6f','#ff7f00','#cab2d6','#6a3d9a')
barplot(Temp5_plot~Year_plot+Season_plot, beside=T, col=Colors)
barplot(Temp75_plot~Year_plot+Season_plot, beside=T, col=Colors)

t.test(data5$HNA.B[which(data5$year == 2005)], data5$HNA.B[which(data5$year == 2009)])
plot(data5$HNA.B, data5$NO2)



#Hypothesis: The seasonal changes of nitrite (NO2) from warming ocean waters effects the biomass of high nucleic acid (HNA) bacteria.