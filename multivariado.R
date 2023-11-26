install.packages("readxl")
library(readxl)
install.packages("psych")
library(psych)
ruta_excel <- "C:\\Users\\aldai\\Downloads\\Datos multivariado (1).xlsx"
multivariado <- read_excel(ruta_excel)
library(plyr)
head(ruta_excel)
datos_sin_columna <- subset(multivariado, select = -c(1,7))


acp <- prcomp(datos_sin_columna, center = TRUE, scale. = TRUE)

plot(acp, type="l")

kmo_resultados <- KMO(datos_sin_columna)


