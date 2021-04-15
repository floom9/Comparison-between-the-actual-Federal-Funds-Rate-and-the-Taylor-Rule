
inflation <- read.csv("inflation.csv")
head(inflation)
colnames(inflation) <- c("Year","Inflation.Rate")
inflation$Year <- 1977:2017

output <- read.csv("output_gap.csv")
output$DATE <- inflation$Year

ffr <- read.csv("FEDFUNDS.csv")
ffr$DATE <- inflation$Year

plot(output$DATE, output$GDPC1_GDPPOT, type = "b")

plot(inflation$Year, inflation$Inflation.Rate, type = "b")

taylor <- 2 + 1.5*(inflation$Inflation.Rate) + 0.5*output$GDPC1_GDPPOT

taylor <- data.frame(inflation$Year, taylor)
colnames(taylor) <- c("Year", "Taylor")

plot(ffr$DATE, ffr$FEDFUNDS, type = "b", col="red")
lines(taylor$Year, taylor$Taylor, type = "b", col="green")
legend(2000, 15, legend=c("Federal Funds Rate", "Taylor Rule"),
       col=c("red", "green"), lty=1:1, cex=0.8)
write.csv(taylor, "taylor.csv")
