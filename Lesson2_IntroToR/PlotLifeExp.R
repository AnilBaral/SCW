#plot life exp
# read the data into R 
myDataFull <- read.table("gapminder.txt", header = TRUE)

#Select data from Canada 
Canada=myDataFull[myDataFull$country=="Canada",]

#plot life exp
png("canada.png")

plot(Canada$year, Canada$lifeExp, type="l",col ="blue")
dev.off()
