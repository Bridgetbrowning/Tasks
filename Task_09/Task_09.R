setwd("C:\\Users\\bdb00009\\Desktop\\Evolution\\Tasks\\Task_09")
library(diversitree)
transition_0to1 <- 0.1
transition_1to0 <- 0.1
speciation_0 <- 0.2
extinction_0 <- 0.1
speciation_1 <- 0.2
extinction_1 <- 0.1
maxN <- 1e3
maxT <- 50
Pars <- c(speciation_0, speciation_1, extinction_0, extinction_1, transition_0to1, transition_1to0)
simTree <- tree.bisse(Pars, max.taxa = maxN, max.t = maxT)
str(simTree)
?tree.bisse
stateTable <- table(simTree$tip.state)
stateTable / sum(stateTable)
#here state 1 is higher than state 0

library(diversitree)
transition_0to1 <- 0.1
transition_1to0 <- 0.1
speciation_0 <- 0.2
extinction_0 <- 0.1
speciation_1 <- 0.2
extinction_1 <- 0.1
maxN <- 1e5
maxT <- 100
Pars <- c(speciation_0, speciation_1, extinction_0, extinction_1, transition_0to1, transition_1to0)
simTree <- tree.bisse(Pars, max.taxa = maxN, max.t = maxT)
str(simTree)
stateTable <- table(simTree$tip.state)
stateTable / sum(stateTable)

library(diversitree)
transition_0to1 <- 0.5
transition_1to0 <- 0.5
speciation_0 <- 0.1
extinction_0 <- 0.2
speciation_1 <- 0.1
extinction_1 <- 0.2
maxN <- 1e5
maxT <- 100
Pars <- c(speciation_0, speciation_1, extinction_0, extinction_1, transition_0to1, transition_1to0)
simTree <- tree.bisse(Pars, max.taxa = maxN, max.t = maxT)
str(simTree)
stateTable <- table(simTree$tip.state)
stateTable / sum(stateTable)

library(diversitree)
transition_0to1 <- 0.1
transition_1to0 <- 0.1
speciation_0 <- 0.2
extinction_0 <- 0.1
speciation_1 <- 0.2
extinction_1 <- 0.1
maxN <- 1e3
maxT <- 1000
Pars <- c(speciation_0, speciation_1, extinction_0, extinction_1, transition_0to1, transition_1to0)
simTree <- tree.bisse(Pars, max.taxa = maxN, max.t = maxT)
str(simTree)
stateTable <- table(simTree$tip.state)
stateTable / sum(stateTable)
#I am still getting that 1 is higher than 0

library(diversitree)
transition_0to1 <- 0.1
transition_1to0 <- 0.1
speciation_0 <- 0.2
extinction_0 <- 0.1
speciation_1 <- 0.2
extinction_1 <- 0.1
maxN <- 1e3
maxT <- 10000
Pars <- c(speciation_0, speciation_1, extinction_0, extinction_1, transition_0to1, transition_1to0)
simTree <- tree.bisse(Pars, max.taxa = maxN, max.t = maxT)
str(simTree)
plot(maxN, maxT, xlab='speciation', ylab='extinction')
stateTable <- table(simTree$tip.state)
stateTable / sum(stateTable)
dev.off
