#Daten nach Regionen sortieren
alc_per_region <- subset(alc, Entity == "East Asia and Pacific" | Entity == "Europe and Central Asia" | Entity == "European Union" | Entity == "Latin America and Caribbean" | Entity == "Middle East and North Africa" | Entity == "North America" | Entity == "South Asia" | Entity == "Sub-Saharan Africa")

suicide_per_region <- subset(suicide, Entity == "East Asia & Pacific (WB)" | Entity == "Europe & Central Asia (WB)" | Entity == "European Region (WHO)" | Entity == "Latin America & Caribbean (WB)" | Entity == "Middle East & North Africa (WB)" | Entity == "North America (WB)" | Entity == "South Asia (WB)" | Entity == "Sub-Saharan Africa (WB)")
suicide_per_region <- subset(suicide_per_region, Year == 2000 | Year == 2005 | Year == 2010 | Year == 2015 | Year == 2018)

#Mediane berechnen
median_alc <- median(alc_per_region[,4])
median_suicide <- median(suicide_per_region[,4])

#Standardabweichung berechnen
std_alc <- sd(alc_per_region[,4])
std_suicide <- sd(suicide_per_region[,4])

#Matrix für 
x <- c(alc_world[,4],suicide_world[,4])
x <- matrix(x, nrow = 2)
prop.table(x)
prop.table(table(x))