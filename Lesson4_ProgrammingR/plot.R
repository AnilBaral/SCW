install.packages("ggplot2")

library(ggplot2)
gapminder <- read.table("gapminder.txt", header = TRUE)
head(gapminder)
ggplot(data=gapminder,aes(x = gdpPercap, y= lifeExp))+geom_point()
ggplot(data=gapminder,aes(x = year, y= lifeExp,by=country, color= continent))+
  geom_line()+geom_point()
ggplot(data=gapminder,aes(x = year, y= lifeExp,by=country))+
  geom_line(aes(color=continent))+geom_point()
ggplot(data=gapminder,aes(x = year, y= lifeExp,by=country))+
  geom_line(color="blue")+geom_point()
ggplot(data=gapminder,aes(x = year, y= lifeExp,by=country))+
  geom_point()+geom_line(color="blue")

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point(alpha = 0.5)+
  scale_x_log10()+
  geom_smooth(method="lm", size= 1.5)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point(alpha = 0.5, color= "Red", size= 0.5)+
  scale_x_log10()+
  geom_smooth(method="lm", size= 1.5)

Challange 5

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(alpha = 0.5, shape= 10, size= 0.5)+
  scale_x_log10()+
  geom_smooth(method="lm", size= 1.5)

az_row <- startsWith(as.vector(gapminder$country),c('A','Z'))
az_countries <- gapminder[az_row,]
lifeExp_plot <- ggplot(data = az_countries, aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + 
  facet_wrap( ~ country)+
  labs(x="year",y= "life expectancy", title = "Figure 1", color= "Continent")+
  theme(axis.text.x=element_text(angle = 45), axis.ticks.x=element_blank())

ggsave(filename= "lifeExp.png", plot = lifeExp_plot, width = 12, height = 10, dpi = 300, units = "cm")
ggsave("myplot.pdf")

ggplot(data =gapminder[gapminder$country=="Sweden", ], aes(x = year, y = lifeExp)) +
  geom_bar(fill='orange', stat="identity")
ggplot(data =gapminder[gapminder$country=="Sweden", ], aes(x = year)) +
  geom_bar(fill='orange')

e_rows=startsWith(as.vector(gapminder$country), c('E') )
e_countries <- gapminder[e_rows, ]
ggplot(data = e_countries, aes(x = year, y = pop/1000000, fill=continent)) +
  geom_bar(stat="identity") + facet_wrap( ~ country) +
  labs(
    x = "Year",                     # x axis title
    y = "Population (Million)",     # y axis title
    title = "Figure 1",             # main title of figure
    fill = "Continent"              # title of legend
  ) +
  theme(axis.text.x=element_text(angle=45), axis.ticks.x=element_blank()) +
  theme_bw()

