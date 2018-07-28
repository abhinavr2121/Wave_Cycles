temperatures$dt <- as.Date(temperatures$dt)

temperatures <- temperatures[temperatures$dt > "1851-01-01", c("dt", "LandAverageTemperature")]

temp.ts <- ts(temperatures, start = c(1851, 1), end = c(2015, 12), frequency = 12)
temp.ts <- temp.ts[, "LandAverageTemperature"]
temp.fit <- decompose(temp.ts)
plot(temp.fit, xlab = "Year")

temp.month <- monthplot(temp.ts)
temp.season <- seasonplot(temp.ts, year.labels = F, main = "Seasonal Plot, Average Land Temperature", ylab = "Degrees Celsius")