cars.2 <- filter(cars, Year == 2011)
cars.3 <- filter(cars, Year == 2012)
cars.4 <- filter(cars, Year == 2013)
cars.5 <- filter(cars, Year == 2014)
cars.6 <- filter(cars, Year == 2015)

p1 <- ggplot(cars.2, aes(x = Month, y = Quantity)) + geom_path() + theme_gdocs() + xlab("") + ggtitle("New Car Sales in Norway, 2011")
p1

p2 <- ggplot(cars.3, aes(x = Month, y = Quantity)) + geom_path() + theme_gdocs() + xlab("") + ggtitle("New Car Sales in Norway, 2012")
p2

p3 <- ggplot(cars.4, aes(x = Month, y = Quantity)) + geom_path() + theme_gdocs() + xlab("") + ggtitle("New Car Sales in Norway, 2013")
p3

p4 <- ggplot(cars.5, aes(x = Month, y = Quantity)) + geom_path() + theme_gdocs() + xlab("") + ggtitle("New Car Sales in Norway, 2014")
p4

p5 <- ggplot(cars.6, aes(x = Month, y = Quantity)) + geom_path() + theme_gdocs() + ggtitle("New Car Sales in Norway, 2015")
p5

multiplot(p2, p3, p4, p5)
