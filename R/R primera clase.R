
x <- 10.5
class(x)

y <- 10L
class(y)

texto <- "Hola"
class(texto)

verdadero <- TRUE
falso <- FALSE
class(verdadero)

num_a_texto <- as.character(x)
class(num_a_texto)

texto_a_numero <- as.numeric("42")
class(texto)

class(texto_a_numero)

is.numeric(x)

is.character(x)

numeros
numeros[-2]
numeros -2

r <- 42
class(r)

r <- "hola"
class(r)

sum(numeros)

mean(numeros)

length(numeros)
1:10
10:1

seq(from = 0, to = 1, by = 0.1)

seq(from = 0, to = 100, length.out = 5)

seq(from = 0, to = 100, length.out = 20)

rep(1, times=5)

rep(c(1,2,3), times=3)
rep(c(1,2,3), each =2)

mat <- matrix(1:12, nrow=3, ncol = 4, byrow=TRUE) 
mat

rownames(mat) <- c("fila1", "fila2", "fila3")
colnames(mat)<- c("col1", "col2", "col3","col4")
mat

t(mat)
A <- matrix(1:4, nrow=2)
B <- matrix(5:8, nrow=2)
A
B
A + B

A %*% B
A * B

mi_lista <- list(
  nombre = "Juan",
  edad = 30,
  alturas = c(1.75, 1.76, 1.77),
  matriz = matrix(1:6, nrow=2),
  activo =TRUE
) 
print(mi_lista)
mi_lista$nombre
mi_lista$edad
mi_lista$alturas[2]
mi_lista$edad <- 31
mi_lista$edad 
mi_lista$nombre <- "Juan Pérez"
mi_lista$nombre
mi_lista$correo <- "email@email.com"
mi_lista$correo

mi_lista$habilidades <- c("R", "Python", "SQL") 
print(mi_lista)
names(mi_lista)

nombres <- c("Juan", "Maria", "Jose", "Teresa")
edades <- c(25,30,28,33)
salarios <- c(3500, 2100, 1500, 3200)
departamentos<- c("Ventas", "IT", "Marketing", "RRHH")

#Creando el data frame 
empleados <- data.frame(
  Nombre = nombres, 
  Edad = edades,
  Salario = salarios,
  Departamento = departamentos
)

print(empleados)

str(empleados)
dim(empleados)
summary(empleados)
empleados$Nombre
empleados[["Salario"]]
empleados$Salario
empleados[2,]
empleados[4, 3]

#añadir nueva columa

empleados$Experiencia <- c(2,5,4,8)
print(empleados)

#añaidr nueva fila

Nuevo_empleado <- data.frame(
  Nombre = "Jorge",
  Edad = 24,
  Salario = 2600,
  Departamento = "Administración",
  Experiencia = 2
)
empleados <- rbind(empleados, Nuevo_empleado)
print(empleados)

empleados$Experiencia <- NULL
head(empleados)

#Funciones
calcular_area_circulo <- function(radio) {
  
  if(radio < 0) {
    stop("El radio debe ser un número positivo")
  }
  area <- pi * radio^2
  return(area)
}

calcular_area_circulo(5)


#funcion con multiples argumentos
convertir_temperaturas <- function(temp, de = "C", a = "F"){
  de <- toupper(de)
  a <- toupper(a)
 
  
  if(de == "C"){
    temp_c <- temp 
  }else if(de =="F"){
    temp_c <- (temp -32) * 5/9
  }else if(de == "K"){
    temp_c <- temp -273.15
  }else{
    stop("Unidad de origen no válida. Use 'C', 'F', o 'K'")
  }
  if(a == "C"){
    return(temp_c)
  }else if (a == "F"){
      return(temp_c * 9/5 +32)
  }else if (a == "K"){
      return(temp_c + 273.15)
  }else{
      stop("Unidad de destino no válida. Use 'C', 'F' o 'K'")
    }
}

convertir_temperaturas(25)
convertir_temperaturas(25, "f", "K")

help("log")
log
args(log)


ls()
ls

exp(1)
log(2.718282)
log(exp(1))

data()
AirPassengers

pi

class(ls)
class(A)
a
a <- 2
a

install.packages("ds labs")

library(dslabs)
data("murders")
class(murders)
str(murders)
head(murders)
names(murders)
murders$population

murders

pop <- murders$population
length(pop)
class(pop)
z <- 3 == 2
print(z)

class(z)

levels(murders$region)

paises <- c("España", "Italia", "England")
codigos <- c("España"= 34, "Italia"=39,"England"=44)
codigos
class(codigos)
seq(1,10)
seq(1,10,2)
1:10
codigos[2]
codigos["España"]
z <- c(1,"España",3)
z
class(z)
x <- 1:5
y <- as.character(x)
y

as.numeric(y)

class(y)
x <- c("1", "b", "2")
as.numeric(x)
sort(murders$total)
x <- c(31,4, 15 ,92, 65)
x
sort(x)
index <- order(x)
x[index]
index
murders$state[1:10]
murders$abb[1:10]
index <- order(murders$total)
murders$abb[index]

max(murders$total)

i_max <- which.max(murders$total)
i_max
murders$state[i_max]

rank(x)

murders$state[which.max(murders$population)]
