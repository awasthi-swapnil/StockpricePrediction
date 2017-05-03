setwd("F:/Study/SDM")
jetfuel <- read.csv(file = 'jetfuelprices.csv')
delta <- read.csv(file = 'Deltastocks.csv')
sp500 <- read.csv(file = 'Proj-SP500.csv')
brentoil <- read.csv(file = 'brentoilprices.csv')

#sp500$adjclose <- sp500[,]
head(sp500,15)
head(delta)
tail(delta)

fuel <- fuel[13:nrow(fuel),]
#changing name of column 
colnames(fuel)[1] <- 'Dates'
colnames(fuel)[2] <- 'Jet-Fuel-prices'

colnames(fuel)
fuelprices <- fuel[,c('Jet-Fuel prices')]
fuel.rmNA <- as.data.frame(fuelprices[complete.cases(fuelprices)]) #removing NAs
dat <- dat[!is.na(as.numeric(as.character(dat$A))),]
