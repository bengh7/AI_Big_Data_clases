
#Simula niveles de colesterol total (mg/dL) para 45 pacientes.
colesterol <- rnorm(45, mean = 200, sd = 25)

#tendencia central
mean(colesterol)
median(colesterol)

#dispersion
sd(colesterol)
var(colesterol)

#asimetria
skewness (colesterol)
