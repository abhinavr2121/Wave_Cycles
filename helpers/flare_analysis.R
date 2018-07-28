flares$start.date <- as.Date(flares$start.date)
tab <- table(cut(flares$start.date, 'month'))
flares.freq <- data.frame(Date = format(as.Date(names(tab)), '%m/%Y'), Frequency = as.vector(tab))
flares.freq <- flares.freq[, "Frequency"]
flares.ts <- ts(flares.freq, start = c(2002), end = c(2015), frequency = 12)
flares.fit <- decompose(flares.ts)
plot(x = flares.fit$trend, xlab = "Year", ylab = "Frequency", main = "Annual Solar Flare Frequencies")
