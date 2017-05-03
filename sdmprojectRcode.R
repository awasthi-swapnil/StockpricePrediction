setwd("F:/Study/SDM")

#reading file and setting the junks values to NA
jetfuel <- read.csv(file = 'jetfuelprices.csv', skip = 12, header = T, as.is = T, na.strings = "#N/A")
delta <- read.csv(file = 'Deltastocks.csv', skip = 0, header = T, as.is = T, na.strings = "NA")
sp500 <- read.csv(file = 'Proj-SP500.csv', skip = 0, header = T, as.is = T, na.strings = "NA")
brentoil <- read.csv(file = 'brentoilprices.csv', skip = 12, header = T, as.is = T, na.strings = "#N/A")

#checking the NA values
colSums(is.na(jetfuel))
colSums(is.na(delta))
colSums(is.na(sp500))
colSums(is.na(brentoil))

#setting up the dates format and extracting required columns
sp500$Date <- as.Date(sp500$Date, '%Y-%m-%d')
sp500.data <- sp500[,c('Date','Adj.Close')]

delta$Date <- as.Date(delta$Date, '%Y-%m-%d')
delta.data <- delta[,c('Date','Adj.Close')]

jetfuel$DATE <- as.Date(jetfuel$DATE, '%Y-%m-%d')
brentoil$DATE <- as.Date(brentoil$DATE, '%Y-%m-%d')

#converting the NAs to mean values of the column - Imputation
jetfuel[is.na(jetfuel[,2]), 2] <- mean(jetfuel[,2], na.rm = TRUE)
brentoil[is.na(jetfuel[,2]), 2] <- mean(brentoil[,2], na.rm = TRUE)



























