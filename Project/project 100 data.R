setwd("C:\\Users\\bdb00009\\Desktop\\Evolution\\Tasks\\Project")
data1 <- read.csv("mydata100.csv")
data1

data2<-read.delim(file.choose( load("C:\\Users\\bdb00009\\Desktop\\Evolution\\Tasks\\Project\\larvalweight_Competency.txt")))
data2 <- read.csv("larvalweight_Competency.csv")
data3 <- read.csv("Mortality_Competency.csv")
data4 <- read.csv("Weigh_surv_corr_Competency.csv")