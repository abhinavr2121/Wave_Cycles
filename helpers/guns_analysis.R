guns$date <- as.Date(guns$date)
tab <- table(cut(guns$date, "day"))
guns <- data.frame(Date = names(tab), Frequency = as.vector(tab))
guns <- guns[366 : length(guns$Date) - 1, "Frequency"]
guns.ts <- ts(guns, start = c(2014, 1), end = c(2018, 3), frequency = 365)
guns.fit <- decompose(guns.ts)
plot(guns.fit)
Gun.Violence <- guns
seasonality <- spec.pgram(guns, spans = seq(2, 20, 2), plot = T)