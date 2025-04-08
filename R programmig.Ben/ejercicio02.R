# Crear variables de datos clínicos
edad <- 35
peso <- 75
presion_arterial <- "120/80"
nombre <- "Elena"

# Tipos de datos en registros clínicos
str(list(nombre, edad, peso, presion_arterial))

# Vectores de temperaturas corporales
temps <- c(36.5, 36.8, 37.2, 37.0, 36.9)
mean(temps)

# Clasificación por niveles de glucosa
glucosa <- c(85, 92, 110, 130, 95)
sort(glucosa)
glucosa > 100

# Coerción de datos
datos <- c("45", "Juan", TRUE)
class(datos)

# Analisis de presión arterial
presiones <- c(120,14,135,150,125)
max(presiones)
which.max(presiones)

# Ranking de pacientes
temps <- c(37.5, 36.8, 38.2, 37.0)
rank(temps)

# Comparación de dosis administradas
dosis1 <- c(500, 400, 300)
dosis2 <- c(100, 200, 300)
diferencia <- dosis1 - dosis2
diferencia

# Pacientes ordenados por edad
edades <- c(70, 45, 60, 80)
sort(edades, decreasing = TRUE)

# Asignaciónne camaspor gravedad
gravedad <- c(3, 5, 2, 4)
order(gravedad, decreasing = TRUE)

# Función para calcular IMC
imc <- function(peso, talla){
  peso / (talla^2)
}
imc(68, 1.65)

# Clasificación del IMC
pesos <- c(60, 80, 95)
tallas <- c(1.6, 1.75, 1.8)
imcs <- imc(pesos, tallas)
ifelse(imcs < 18.5, "Bajo peso",
       ifelse(imcs < 25, "Normal", "Sobrepeso"))

# Registro diario ritmo cardíaco
rc <- c(72, 80, 76, 78)
sum(rc)
mean(rc)

# Diferencia de tratamiento pre y post
pre <- c(140, 135, 145)
post <- c(130, 128, 138)
diferencia <- pre - post
diferencia

# conteo de pacientes hipertensos
presiones <- c(130, 145, 160, 138)
sum(presiones > 140)

# Función de alerta de fiebre
alerta_fiebre <- function(temp){
  temp > 37.5
}

alerta_fiebre(c(36.5, 38.2, 37.0))

# Coerción de encuesta médica
respuestas <- c("si", "no", 1, 0)
class(respuestas)

# Resumen de datos vitales
frecuencia <- c(80, 85, 90, 78)
mean(frecuencia)
max(frecuencia)
min(frecuencia)

# Normalización de datos
valores <- c(200, 250, 180, 220)
val_norm <- (valores - min(valores)) / (max(valores) - min(valores))
val_norm

# Función de puntuación del riesgo
riesgo <- function(presion, glucosa, colesterol){
  0.3 * presion + 0.4 * glucosa + 0.3 * colesterol
}

riesgo(140, 110, 180)

