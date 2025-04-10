#Evalucaión del IMC
#Simulamos los valores de IMC
imc <- rnorm(50, mean = 26, sd = 4)

#Medidas de tendencia central
mean(imc)
median(imc)

#Dispersion
sd(imc)
var(imc)

#Asimetria
skewness(imc)

#IMC promedio esperado alrededor de 26(sobrepeso leve)
#Dispersión nos indica si hay mucha diferencia entre individuos
