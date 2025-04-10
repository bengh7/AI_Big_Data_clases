#tiempo de recuperación tras tratamiento
#simulacion de 25 tiempos de recuperación

library(e1071)
recuperacion <- rnorm(25, mean = 10, sd = 3)
recuperacion

#Estadística descriptiva
mean(recuperacion)  #media
median(recuperacion) #mediana
sd (recuperacion) #desviacion estandar, si es alta tardan mucho en recuperarse
var (recuperacion) # varianza
skewness (recuperacion)
