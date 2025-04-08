# Creación de variables
edad <- 25
altura <- 1.75
nombre <- "Carlos"

# Operaciones con variables
a <- 10
b <- 5
suma <- a + b
multiplicacion <- a * b
division <- a / b
potencia <- a ^ b

# Actualización variables
x <- 50
x <- 100 # cambio de valor

# Función suma
suma_dos_numeros <- function(a, b){
  return(a + b)
}
suma_dos_numeros(3,2)

# Función con valor por defecto
multiplicar <- function(a, b = 2) {
  return (a * b)
}
multiplicar(2)

# Función con retorno múltiple
operaciones_basica <- function (a, b){
  return(list(suma = a + b, resta = a - b, producto = a * b))
}
operaciones_basica(4,5)

# Identificación de tipos 
a <- 10
b <- "Hola"
c <- TRUE
class(a)
class(b)
class(c)

# Conversión de tipos
a <- 10
b <- as.character(a)
c <- as.logical(a)

# Diferencia entre integer, double y numeric
a <- 10L
b <- 10.5
c <- as.numeric(a)  #Numérico
class(a)
class(b)
class(c)
typeof(b)
typeof(a)
typeof(c)

# Creación de vectores
numeros <- c(1, 2, 3, 4, 5)
nombres <- c("Ana", "Luis", "Pedro")

# Acceso a elementos
tercero <- numeros[3]
ultimo <- numeros[length(numeros)]

# Modificación de vectores
numeros[2] <- 10

# Coerción automática
vector_mixto <- c(1, "texto", TRUE)
class(vector_mixto)

# Conversión manual
as.numeric("5")
as.character(10)
as.logical(0) 

# Errores de coerción
as.numeric("Hola")  # devuelve NA

# Ordenar números
valores <- c(3, 8, 1, 6)
sort(valores)

# Ordenar caracteres
nombres <- c("Pedro", "Patricia", "Maria")
sort(nombres)

# Ordenar con order()
orden <- order(valores)
valores[orden]

# Máximo y mínimo
max(valores)
min(valores)

# Indice del máximo y mínimo
which.max(valores)
which.min(valores)

# Ranking de valores
rank(valores)
valores

# Ranking con empate
valores_repetidos <- c(3, 3, 1, 8)
rank(valores_repetidos)

# Suma de vectores
v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
suma_vectores <- v1 + v2
suma_vectores

# Multiplicación con escalar
v1 <- c(4, 7, 9)
v1*2

# Operación con diferentes longitudes
v1 <- c(1, 2, 3, 4, 5)
v2 <- c(10, 20)
suma <- v1 + v2
suma

# Ordenando con ranking
valores
ordenado <- valores[order(rank(valores))]
ordenado

#####
numeros <- c(1, 15, 3, 4, 5, 6, 7, 8, 9, 10)
numeros
sort(numeros)
order(numeros)

# Segunda mayor edad
edades <- c(20, 25, 30, 40)
segunda_mayor <- sort(edades, decreasing=TRUE)[2]
segunda_mayor

# Suma condicionada
numeros <- c(5, 15, 20, 3)
suma_mayores_10 <- sum(numeros[numeros > 10])
suma_mayores_10

# Extrae números pares de un vector numérico
pares <- numeros[numeros %% 2 == 0]
pares

# Creación función
analisis_vector <- function(v){
  return(list(
    maximo = max(v),
    minimo = min(v),
    promedio = mean(v),
    ranking = rank(v)
  )
  )
}
analisis_vector(numeros)
