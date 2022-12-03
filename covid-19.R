covid19 <- read.csv("E:\\R for young data analysts\\2022\\covid data.csv",header=TRUE)
str(covid19)
View(covid19)
attach(covid19)



table(WHO.Region)

mean(PERSONS_BOOSTER_ADD_DOSE)
sd(PERSONS_BOOSTER_ADD_DOSE)
min(PERSONS_BOOSTER_ADD_DOSE)
max(PERSONS_BOOSTER_ADD_DOSE)
median(PERSONS_BOOSTER_ADD_DOSE)
range(PERSONS_BOOSTER_ADD_DOSE)
quantile(PERSONS_BOOSTER_ADD_DOSE)
#
mean(PERSONS_BOOSTER_ADD_DOSE,na.rm=TRUE)
sd(PERSONS_BOOSTER_ADD_DOSE,na.rm=TRUE)
min(PERSONS_BOOSTER_ADD_DOSE,na.rm=TRUE)
max(PERSONS_BOOSTER_ADD_DOSE,na.rm=TRUE)
median(PERSONS_BOOSTER_ADD_DOSE,na.rm=TRUE)
range(PERSONS_BOOSTER_ADD_DOSE,na.rm=TRUE)
quantile(PERSONS_BOOSTER_ADD_DOSE,na.rm=TRUE)
#
summary(covid19)
fivenum(PERSONS_BOOSTER_ADD_DOSE)
aggregate(PERSONS_BOOSTER_ADD_DOSE~WHO.Region,data=covid19,mean) 
aggregate(PERSONS_BOOSTER_ADD_DOSE~WHO.Region,data=covid19,sd)

n.country <- table(WHO.Region)
barplot(n.country, main="number of countries in WHO_Region")
pie(n.country)
#
percent <- n.country/sum(n.country)*100
barplot(percent, main="number of countries in WHO_Region",ylab="percentage (%)",
        col=c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk","turquoise"))
#
n.country <- table(WHO.Region)
lbls <- names(n.country)
pct <- round(n.country/sum(n.country)*100,2)
lbls <- paste(lbls, pct) # add percents to labels
lbls <- paste(lbls,"%",sep="") # ad % to labels
pie(n.country,labels = lbls, col=rainbow(length(lbls)),
    main="Proportion of country in WHO.region")

hist(PERSONS_BOOSTER_ADD_DOSE_PER100,col = "mistyrose")
hist(PERSONS_BOOSTER_ADD_DOSE_PER100,freq = FALSE, col = "turquoise",main=NULL)


hist(TOTAL_VACCINATIONS_PER100)
hist(PERSONS_FULLY_VACCINATED_PER100)


boxplot(PERSONS_BOOSTER_ADD_DOSE_PER100,horizontal = T,col="mistyrose",
        main="PERSONS_BOOSTER_ADD_DOSE_PER100")
boxplot.stats(PERSONS_BOOSTER_ADD_DOSE_PER100)
text(x = boxplot.stats(PERSONS_BOOSTER_ADD_DOSE_PER100)$stats,
     labels = boxplot.stats(PERSONS_BOOSTER_ADD_DOSE_PER100)$stats, y = 1.25,cex=0.8)
#
hist(TOTAL_VACCINATIONS_PER100)
boxplot(TOTAL_VACCINATIONS_PER100,horizontal = T,col="lightblue",
        main="TOTAL_VACCINATIONS_PER100")
text(x = boxplot.stats(TOTAL_VACCINATIONS_PER100)$stats,
     labels = boxplot.stats(TOTAL_VACCINATIONS_PER100)$stats, y = 1.25,cex=0.8)
#
hist(PERSONS_FULLY_VACCINATED_PER100,col="lavender",main=NULL)
boxplot(PERSONS_FULLY_VACCINATED_PER100,horizontal = T,col="lavender",
        main="TOTAL_VACCINATIONS_PER100")
text(x = boxplot.stats(PERSONS_FULLY_VACCINATED_PER100)$stats,
     labels = boxplot.stats(PERSONS_FULLY_VACCINATED_PER100)$stats,y = 1.25,cex=0.8)

hist(Cases_newly.reported.in.last.7.days.per.100000.population,col="turquoise",main=NULL)
boxplot(Cases_newly.reported.in.last.7.days.per.100000.population,horizontal = T,col="turquoise",
        main="Cases_newly.reported.in.last.7.days.per.100000.population")
bp.stat <- boxplot.stats(Cases_newly.reported.in.last.7.days.per.100000.population)


Name[Cases_newly.reported.in.last.7.days.per.100000.population==bp.stat$out]
which(Cases_newly.reported.in.last.7.days.per.100000.population==bp.stat$out)

par(cex.main=0.7)
par(cex.axis=0.7)
boxplot(PERSONS_FULLY_VACCINATED_PER100~WHO.Region,horizontal = F,
        col=c("lightblue", "mistyrose", "lightcyan",
              "lavender", "cornsilk","turquoise"))



par(cex.main=0.7)
par(cex.axis=0.9)
boxplot(Cases_cumulative.total.per.100000.population~WHO.Region,horizontal = F,
        col=c("lightblue", "mistyrose", "lightcyan",
              "lavender", "cornsilk","turquoise"))
boxplot.stats(Cases_cumulative.total.per.100000.population[WHO.Region=="Africa"])

#legend("topright", names(n.country),
#       fill = c("lightblue", "mistyrose", "lightcyan",
#                "lavender", "cornsilk","turquoise"))
