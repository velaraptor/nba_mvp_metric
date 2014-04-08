twelve<-read.csv("2012.csv")
library(dplyr)
too<-twelve[twelve$totals.Tm=="SAS",]
too$pts.min=(too$totals.PTS/too$totals.MP)
too$min.game=(too$totals.MP/too$totals.G)
too$per.game=(too$pts.min*too$min.game)

##do 48 or by game?
