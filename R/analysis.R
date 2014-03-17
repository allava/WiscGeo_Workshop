setwd('..')

#  Now open the station data.  By default R converts strings to a factor, but this 
#  is annoying behaviour, so we change the behaviour, setting 'stringsAsFactors' to FALSE
stations <- read.csv('input/USHCN/ushcn-stations.csv', stringsAsFactors=FALSE)

plot(Lat ~ Long, data = stations)

boxplot(stations$Lat ~ stations$State)

summary(lm(Lat ~ State, data = stations))
