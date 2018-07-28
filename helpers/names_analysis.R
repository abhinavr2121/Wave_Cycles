anna <- filter(names, names$Name == "Anna" & names$Gender == "F")
p1 <- ggplot(anna, aes(x = anna$Year, y = anna$Count)) + geom_path() + theme_gdocs() + xlab("Year") + ylab("Frequency") + ggtitle("Babies in the US named \"Anna\"")
p1

henry <- filter(names, names$Name == "Henry" & names$Gender == "M")
p2 <- ggplot(henry, aes(x = henry$Year, y = henry$Count)) + geom_path() + theme_gdocs() + xlab("Year") + ylab("Frequency") + ggtitle("Babies in the US named \"Henry\"")
p2

lucy <- filter(names, names$Name == "Lucy" & names$Gender == "F")
p3 <- ggplot(anna, aes(x = lucy$Year, y = lucy$Count)) + geom_path() + theme_gdocs() + xlab("Year") + ylab("Frequency") + ggtitle("Babies in the US named \"Lucy\"")
p3

multiplot(p1, p2, p3)