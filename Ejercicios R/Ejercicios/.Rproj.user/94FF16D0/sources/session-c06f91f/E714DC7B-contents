#fijamos semilla
set.seed(1)

#definimos el tamaño de la muestra
n <- 120

#creamos un data frame con tres variable simuladas
datos <- data.frame(
  #variable cualitativa
  centro_salud = sample(c("Público", "Privado", "ONG"), n, replace = TRUE ),
  #variables cuantitativa
  dosis_recibida = rpois(n, lambda = 4 ), # crea valores siguiendo poison y la dosis
  #variable cuantitativa continua: (meses)
  edad_meses <- rnorm(n, mean = 24, sd = 5)
  
)
#---------------------
# Gráfico 1: diagrama de sectores
#-------------------

#Creamos una tabla de frecuencia 
tabla_centro <- table(datos$centro_salud)

#Generamos el gráfico circular
pie(tabla_centro,
    col =c("lightcoral", "lightblue", "lightgreen"),
    main = "Tipo de centro de salud visitado"
    )
# ----------------------
#Grafico 2: histograma
# ----------------------

#histograma  para la variable
hist(datos$dosis_recibida,
     col = "orange",
     main = "Número de dosis recibidas",
     xlab = "Dosis",
     ylab = "Frecuencia")

#---------------------
# Gráfico 3: Diagrama de caja (Boxplot)
#---------------------
#boxplot para edades en makeClassRepresentation
datos$edad_meses
boxplot(datos$edad_meses,
        col = "lightcyan",
        main = "Edad en meses",
        ylab = "Meses"
        )


