edad <- 40
altura <- 1.8
nombre <- "Pepe"

x <- 5
y <- 7
x + y
x - y
x * y
x / y
x^y



x = x+y
x
suma_dos_numeros<-(x+y)
suma
#funcion suna 2 numeros
suma_dos_numeros <- function(a, b) {
  return(a + b)
}
print (suma_dos_numeros(3,4))

funcion_multiplicar <- function(a, b = 2) {
  return(a * b)
}

print(funcion_multiplicar(5))
funcion_multiplicar(3)

operaciones_basicas <- function(a,b){
  suma <- a + b
  resta <- a - b
  multiplicacion <- a * b
  return (list(suma, resta, multiplicacion))
}
resultado <- operaciones_basicas(10, 3)
print(resultado)           

numerico <- 7
caracter <- "marzo"
logico <- TRUE

class(numerico)
class(caracter)
class(logico)
typeof(numerico)
typeof(caracter)
typeof(logico)

numero <- 7
b <- as.character(numero)
c <- as.logical(numero)

num_integer <- 7L
num_double <- 1.77
num_numeric <- as.numeric(a)
class(num_integer)
class(num_double)
class(num_numeric)
typeof(num_integer)
typeof(num_double)
typeof(num_numeric)

#crea vectores
numeros <- 1:10
nombres <- c("Ana", "Pepe", "Juan", "Luis", "Marta")
numeros
nombres

numeros[3]
numeros[length(numeros)]

#12
numeros[2] <- 15
numeros

vec_num_car <- c(3, "pera", 15, "fresa")
vec_num_car
class(vec_num_car)


#14
as.numeric("pez")
as.numeric("7")

as.character(754)
as.logical(0)

#15
as.numeric("pez")

#16 
sort(numeros)
#17
sort(nombres)

#18
index <- order(numeros)
numeros[index]
index

#19
max(numeros)
min(numeros)

#20
indice_max <- which.max(numeros)
indice_min <- which.min(numeros)
indice_max
indice_min




#21
rank(numeros)
numeros
#22

numeros1 <- c(2, 2, 4, 4, 6, 7, 9)
rank(numeros1)

#23
vector1 <- c(1, 2, 3, 4, 5)
vector2 <- c(5, 4, 3, 2, 1)
vector1 + vector2

#24
vector1 * 3

#25

vector3 <- c(3, 2, 1)
vector1 + vector3

#26

rank(numeros)
order(numeros)
#26 de otra manera
numeros
ordenado <- numeros[order(rank(numeros))]
ordenado
#27 
edades <- c( 18, 25, 33, 46, 53, 65)
edades_ordenadas <- sort(edades, decreasing = TRUE)
edades_ordenadas[2]
#27.Rafael
edades <- c( 18, 25, 33, 46, 53, 65)
edades_ordenadas <- sort(edades, decreasing = TRUE)[2]
edades_ordenadas

#28 Suma condicionada
numeros
suma_mayores_8 <- sum(numeros[numeros>8])
suma_mayores_8 

# 29 extraer valores pares
numeros
pares <- numeros[numeros %% 2 == 0]
pares


#30 Creación de una Función Completa
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

