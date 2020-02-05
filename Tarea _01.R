library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")


mean(conjunto$Altura)

H.media <- subset(conjunto, conjunto$Altura <= mean(conjunto$Altura))
H.16 <- subset(conjunto, conjunto$Altura < 16.5)

vecinos.3 <- subset(conjunto, conjunto$Vecinos <= 3)
Vecino.4 <- subset(conjunto, conjunto$Vecinos > 4)

DBH.media <- subset(conjunto, conjunto$Diametro < mean(conjunto$Diametro))
DBH.16 <- subset(conjunto, conjunto$Diametro > 16)


# Especie -----------------------------------------------------------------

cedro_rojo <- subset(conjunto, conjunto$Especie == "C")
Tsuga_heterofila <- subset(conjunto, conjunto$Especie == "H")
Douglasia_verde <- subset(conjunto, conjunto$Especie == "F")


# Cuantas observaciones son menores o iguales a 16.9 cm de diametro

sum(conjunto$Diametro <= 16.9 )

# Cuantas observaciones son mayores a 18.5 m de altura

sum(conjunto$Altura > 18.5)


# Histogramas -------------------------------------------------------------

hist(conjunto$Altura, col = "pink", xlab = "H.media", ylab = "H.16", main = "Altura")
hist(conjunto$Vecinos, col = "yellow", xlab = "Vecino.3", ylab = "Vecino.4", main = "Vecinos")
hist(conjunto$Diametro, col = "green", xlab = "DBH.media", ylab = "DBH.16", main = "Diametro")

mean(conjunto$Altura)
sd(conjunto$Altura)
mean(conjunto$Vecinos)
sd(conjunto$Vecinos)
mean(conjunto$Diametro)
sd(conjunto$Diametro)
