#Load gapminder data from URL
gapminder <- read.table("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv" ,sep = ",", header = TRUE)

#Import ggpplot2
library(ggplot2)

#Plot base and ggplot2
plot(gapminder$lifeExp, gapminder$gdpPercap, col=gapminder$continent)
qplot(lifeExp, gdpPercap, data=gapminder, colour=continent)

#create ggplot2 scatterplot
p <- ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap, colour=continent)) #defines data being used
p <- p + geom_line(aes(group=country)) + geom_point(alpha = 0.4)                                          #defines how usd data is parsed
p + scale_y_log10() + scale_colour_grey()

#create ggplot2 scatterplot (life expectancy change vs time)
A <- ggplot(data=gapminder, aes(x=year, y=lifeExp, colour=continent))
A + geom_point()

#plot trends of live exp vs gdpPercap
b <- ggplot(data=gapminder, aes(x=lifeExp, y=gdpPercap))
b <- b + geom_point(alpha = 0.4, aes(colour=continent))
b + scale_y_log10() + geom_density2d()

#challenge 15
g <- ggplot(data=gapminder, aes(x=year, y=lifeExp, colour=continent, group=country))
g + geom_line() + scale_y_log10() + facet_wrap(~continent)

#scatterplot of gdp vs pop size (contour and coloured continent)
f <- ggplot(data=gapminder, aes(x=gdpPercap, y=pop, colour=continent))
f <- f + geom_point(aes(group=country))
f + scale_y_log10() + geom_density_2d()









