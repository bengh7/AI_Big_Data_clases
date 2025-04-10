set.seed(4)
n <- 90

datos <- data.frame (
  actividad =sample(c("Alta", "Moderada", "Baja"), n, replace = TRUE),
  dias_ejercicio = sample(0:7, n, replace =TRUE),
  minutos_diarios = rnorm(n, mean = 30, sd = 10)
  
)


#grafico1 pie chart

#crear tabla
tabla_actividad <- table(datos$actividad)

#generar gráfico nivel de actividad
pie(tabla_actividad,
    col = c("tan", "palegreen", "lightyellow"),
    main = "Nivel de actividad física")

#Histograma
hist(datos$dias_ejercicio,
     col = "plum",
     main = "Dias de ejercicio por semana",
     xlab = "Días",
     ylab = "Frecuencia")

# grafico 3 boxplot
#minutos diarios de actividad fisica


boxplot(datos$minutos_diarios,
        col = "mistyrose",
        main = "nivel de actividad",
        ylab = "IMC")

