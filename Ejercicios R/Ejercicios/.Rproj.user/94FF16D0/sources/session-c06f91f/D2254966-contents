set.seed(2)

#Definimos el tamaño de la muestra
n <- 150

# Creamos el data frame

datos <- data.frame(
  #variable cualitativa sutuacion actual del encuestado
  fumador <- sample(c("Fumador", "Exfumador", "No fumador"),
                    n, replace =TRUE),
  #variable cuantitativa discreta: cantidad de cigarrillos por dia
  cig_dia <- rpois(n, lambda = 10),
  
  #variable cuantitativa continua: edad a la que empezó a fumar
  edad_inicio <- rnorm(n, mean = 17, sd = 2)
)

#-----------
#Grágico 1: Diagrama de sectores
#---------------

# Se crea la tabla de frecuencia
tabla_fumador <- table(datos$fumador)

#generamos el grafico circular
pie(tabla_fumador,
    col =c("lightcoral","lightblue", "lightgreen"),
    main = "Representación situación de los encuestados"
    )

