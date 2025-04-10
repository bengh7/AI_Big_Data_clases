# Fijamos una semilla
set.seed(101)

#variable de número de registros a generar
n <- 300

#generamos un data frame
datos_mortalidad <- data.frame(
  edad = sample(30:90, n, replace = TRUE),# sample aleatorio, de 30 a90 cantidad n y puede ser repetido
  sexo = sample(c("Mujer", "Hombre"), n, replace= TRUE),
  causa_muerte = sample(c("cardiovascular", "cáncer", "respiratorias", "otras"),
                        n, replace = TRUE, prob =c(0.35, 0.3, 0.2, 0.15))#probabilidad
  
)
head(datos_mortalidad)

# tabla
tabla_causa <- table(datos_mortalidad$causa_muerte)
#conbertimos en proporciones
prop.table(tabla_causa)

#cruzada
table(datos_mortalidad$sexo, datos_mortalidad$causa_muerte)

#gráficos
barplot(tabla_causa, col = rainbow(4), main = "Frecuencia por causas de muerte")

pie(tabla_causa, col = rainbow(4), main = "Distribución de causas")


# Ejercicio 2: Evaluación del IMC en una población




