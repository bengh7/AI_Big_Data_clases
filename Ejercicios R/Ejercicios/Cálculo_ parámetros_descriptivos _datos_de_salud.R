set.seed(123)
presion_sistolica <- round(rnorm(30, mean = 125, sd =8))
presion_sistolica

#medidas de tendencia central
media <- mean(presion_sistolica)
mediana <- median(presion_sistolica) # median es el comando para calcular la mediana

media #representa el valor promedio de presion arterial
mediana #valor central que divide la muestra en 2 mitades iguales
#si ambos valores son similares la distribución es simétrica

#calculo de medidas de dispersion
desviacion_estandar <- sd(presion_sistolica)
varianza <- var(presion_sistolica)

desviacion_estandar #cuánto se alejan en promedio los valores de la media
varianza #desviación estandar^2

library(e1071)
#install.packages("e1071") # comentado pq yq esta instalado
library(e1071)

asimetria <- skewness(presion_sistolica)
asimetria # si el valor es positivo

# si el valor es negativo (sesgado a la izquierda, valores bajos)
# Cercano a 0, es simétrica



