edad <- 35
peso <- 75
nombre <- "Pepe"
presion_arterial <- "120/80"

#2
str(list(nombre, edad, peso, presion_arterial))

#3
temps <- c(36.1, 36.8, 37.2, 37.0, 36.9)
mean(temps)

#4 Clasificación por niveles de glucosa
glucosa <- c(85, 92, 110, 130, 95)
sort(glucosa)
glucosa > 100

#5 Coerción de datos
datos <- c("45", "Juan", TRUE)
class(datos)

#6  Análisis de presión arterial
presiones <- c(120, 14, 135, 150, 125)
max(presiones)
which.max(presiones)

#7
temps <- c(37.5, 36.8, 38.2, 37.0)
rank(temps)
#8 
dosis1 <- c(500, 400, 300)
dosis2 <- c(100, 200, 300)

diferencia <- dosis1 - dosis2
diferencia

#9 

edades <- c(70, 45, 60, 80)
sort(edades, decreasing =TRUE)

#10
gravedad <- c(3, 5, 2, 4)
order(gravedad, decreasing = TRUE)

#11

imc <- function(peso, talla){
  peso / (talla^2)

}
imc (68, 1.65)
#12

pesos <- c(60, 80, 95)
tallas <- c(1.6, 1.75, 1.8)
imcs <- imc(pesos, tallas)
ifelse(imcs < 18.5, "Bajo peso",
       ifelse(imcs < 25, "Normal", "Sobrepeso"))

#13 
rc <- c(72, 80, 76, 78)
sum(rc)
mean(rc)

#14  Registro diario de ritmo cardíaco
pre <- c(140, 135, 145)
post <- c(130, 128, 138)
diferencia <- pre - post
diferencia

# 15
presiones <- c(130, 145, 160, 138)
sum(presiones > 140)

#16
alerta_fiebre <- function(temp){
  temp > 37.5
}
alerta_fiebre(c(36.5, 38.2, 37.0))

#17

respuestas <- c("si", "no", 1, 0)
class(respuestas)

#18 Resumen de datos vitales

frecuencia <- c(80, 85, 90, 78)
mean(frecuencia)
max(frecuencia)
min(frecuencia)

#1919. Normalización de datos de laboratorio

valores <- c(200, 250, 180, 220)
val_norm <- (valores - min(valores)) / (max(valores) - min(valores))
val_norm

#20 
riesgo <- function(presion, glucosa, colesterol){
  0.3 * presion + 0.4 *glucosa +0.3 *colesterol
}
riesgo(140, 110, 180)
