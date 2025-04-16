library(dslabs)

#1 Calcular la tasa de homicidios

murder_rate <- (murders$total / murders$population) * 100000

#Crear el vector logico que indique si la tasa es menor que 1
low <- murder_rate < 1
murder_rate
low

#Obtener los indeces de murder_rate donde la tasa es <1
low_indices <- which(low)
low_indices

estados <- murders$state[low_indices]
estados

#4 Definir los testados del noreste
northeast_states <- c("ME", "NH", "VT", "MA", "RI", "CT", "CT", "NY", "NJ", "PA")
northeast_low <- low & (murders$abb %in% northeast_states)
northeast_low

noth_east_states_with_low_murder_rate <- murders$state[northeast_low]
noth_east_states_with_low_murder_rate


# 5 ¿cuantos estados estan por debajo del promedio?

#calculamos el promedio de la tasa de mortalidad 
average_murder_rate <- mean(murder_rate)
#vector lógico calcula la tasa por debajo del promedio
below_average <- murder_rate < average_murder_rate
#contamos los estados que estan por debajo del promedio
states_below_average <- sum(below_average)
states_below_average

#6 Identifica los estados con abreviaturas(AK, MI, IA)
indices_ak_mi_ia <- match(c("AK", "MI", "IA"), murders$abb)
indices_ak_mi_ia

# Extraemos los nombres de los estados
states_ak_mi_ia <- murders$state[indices_ak_mi_ia]
states_ak_mi_ia

# 7 ¿Cual de las siguientes abreviaturas son reales? MA, ME, MI, MO, MU
reales <- c("MA", "ME", "MI", "MO", "MU") %in% murders$abb
reales
c("MA", "ME", "MI", "MO", "MU")[reales]

#Mostrar cual no es real
no_real <- which(!reales)
no_real
c("MA", "ME", "MI", "MO", "MU")[no_real]

# se haria igual así
vector_abb <- c("MA", "ME", "MI", "MO", "MU")
vector_abb[no_real]
