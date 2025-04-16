
# cargamos las librerias
library(dplyr)
library(tibble)

# Creamos un conjunto de datos simulados
set.seed(123) # para reproducibilidad

n <- 200  # número de personas

# crear un tibble
datos <- tibble(
  edad_grupo = sample(c("18-30", "31-45", "46-60", "61+"), n, replace = TRUE),
  sexo = sample(c("hombre", "mujer"), n, replace = TRUE),
  region = sample(c("norte", "centro", "sur"), n, replace = TRUE),
  enfermedad = sample(c(0,1), n, replace = TRUE, prob = c(0.7, 0.3)) #30% p revalencia
)

# Exploración de datos
head(datos) # muestra de las primeras filas
str(datos)  # muestra la estructura de datos
summary(datos)  # resumen estadístico

# tabla de fecuencias
tabla_enfermedad <- table(datos$enfermedad)
tabla_enfermedad_rel <- prop.table(tabla_enfermedad)

# tabla cruzada enfermedad vs sexo
tabla_sexo <- table(datos$sexo, datos$enfermedad)
tabla_sexo_rel <- prop.table(tabla_sexo, margin = 1)

# tabla cruzada enfermedad vs grupo etario
tabla_edad <- table(datos$edad_grupo, datos$enfermedad)

# Representaciones gráficas
# Diagrama de barras por sexo
barplot(tabla_sexo, beside=TRUE, col = c("lightblue","salmon"),
        legend = c("No Enfermo", "Enfermo"), main = "Prevalencia por Sexo")

# Diagrama de barras para el grupo etario
barplot(tabla_edad, beside = TRUE, col = c("lightblue","salmon"),
        legend = c("No Enfermo", "Enfermo"), main = "Prevalencia edad")

# Gráfico circular de la prevalencia total
pie(tabla_enfermedad, labels = c("No Enfermo", "Enfermo"),
    col = c("gray98", "red"), main = "Prevalencia Total")
