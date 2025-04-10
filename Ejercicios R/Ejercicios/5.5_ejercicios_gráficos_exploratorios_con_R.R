set.seed(5)

n <-125

datos <- data.frame(
  #variable cualitativa
  turno = sample(c("Mañana", "Tarde,", "Noche", "Rotativo"), n, replace = TRUE),
  #variable cuantitativa
  despertares = rpois(n, lambda = 2),
  #variables cuatitativa continua
  horas_sueno = rnorm(n, mean = 6.5, sd = 1)

            
)

#Grafico 1: Diagrama de sectores
tabla_turnos <- table(datos$turno)
pie(tabla_turnos, 
    col = c("lightblue", "khaki", "gray", "#3c33ff"),
    main = "turno laboral"
    
    )

#Gráfico 2: Histograma
hist(datos$despertares,
     col = "orchid",
     main = "Despertares nocturnos por semana",
     xlab = "Frecuencia",
     ylab = "Numero de personas")


#Gráfico 3: 

#distribucion de horas de sueño por noche
boxplot(datos$horas_sueno,
        col = "red",
        main = "Horas de sueño por noche",
        ylab = "Horas")


