setwd("C:/Users/spenc/CreightonWorkshop/CWR/DayTwo")
fyd = read.csv(file = 'data/gapminder-FiveYearData.csv')
africanEntries <-fyd[fyd$continent == 'Africa',]
nrow(africanEntries)
