# Fijamos una semilla
set.seed(101)

#variable de número de registros a generar
n <- 300


#generamos un data frame
datos_imc <- data.frame(
  edad = sample(18:90, n, replace = TRUE),# sample aleatorio, de 30 a 90 cantidad n y puede ser repetido
  sexo = sample(c("Mujer", "Hombre"), n, replace= TRUE),
  talla = round(rnorm(n, mean = 1.65, sd =0.1), 2), 
  peso = round(rnorm(n, mean = 70, sd = 15), 2)
)
head(datos_imc)

#2. Calcula el IMC para cada individuo
datos_imc$imc <- with(datos_imc, peso / (talla^2))

#clasificar el IMC según categorías

#Bajo <18
#Normal 18.5 <= IMC <=24.9
#Sobrepeso Normal 25 <= IMC <=29.9
#Obesidad >=30

datos_imc$clasificacion <- cut(datos_imc$imc,
                               breaks =c(0, 18.5, 24.9, 29.9, Inf),
                               labels =c("Bajo peso", "Normal", "Sobrepeso", "Obesidad")  
                               )
#Crea una tabla de frecuencias para la clasificación
tabla_imc <- table(datos_imc$clasificacion)

#Crear u  gráfico de barras
barplot(tabla_imc, col =c("skyblue", "green", "orange", "red"),
        main = "Clasificación IMC en la muestra")

