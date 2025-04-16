#Semilla
set.seed(3)

n <-100

datos <-data.frame(
  #variable tipo de dieta habitual
  dieta = sample(c("Omivora", "Vegetariana","Vegana"),
                 n, replace =TRUE),
  comidas_dia = sample(2:6, n, replace = TRUE),
  
  imc = rnorm(n, mean = 22, sd = 3)

)



#gráfico 1: Diagrama de sectores

tabla_dieta <- table(datos$dieta)

# crea el gráfico
pie(tabla_dieta,
    col = c("tan", "palegreen", "lightyellow"),
    main = "Tipo de dieta habitual")
head(datos)


# Grafico 2: Histograma
hist(datos$comidas_dia,
     col = "skyblue",
     main = "Comidas por día",
     xlab = "Cantidad",
     ylab = "Frecuencia")

#----------------------------
#Gráfico 3: Diagrama de caja (boxplot)
#----------------------------
# Distribución del IMC entre adolescentes

boxplot(datos$imc,
        col = "mistyrose",
        main = "IMC en adolescentes",
        ylab = "IMC")





