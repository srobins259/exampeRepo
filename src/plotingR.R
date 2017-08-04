library(ggplot2)
#pdf("graphs/coloredContinent.pdf")
#  ggplot(data=fyd, aes(x = year, y = lifeExp, color=continent)) + geom_point()
#dev.off()

pdf("graphs/coloredCountry.pdf")
  ggplot(data = fyd, aes(x=continent, y=lifeExp, by=country, color=continent)) + geom_line()
dev.off()

ggplot(data = fyd, aes(x=continent)) + geom_bar()


ggplot(data = gapminder, aes(x = year, y = lifeExp, color=continent)) +
  geom_point(size=.5, shape=15) + scale_x_log10() +
  geom_smooth(method="lm", size=.5) + facet_wrap(~ continent)

starts.with <- substr(fyd$country, start = 1, stop = 1)
az.countries <- fyd[starts.with %in% c("A", "Z"), ]
ggplot(data = az.countries, aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country)
