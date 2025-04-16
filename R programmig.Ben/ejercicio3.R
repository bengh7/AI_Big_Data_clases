library(dslabs)

# Calcular la tasa de homicidios
murder_rate <- (murders$total / murders$population) * 100000


# Crear el vector lógico que indique si la tasa es menor que 1
low <- murder_rate < 1

murder_rate
low

# Obtener los indices de murder_rate donde la tasa es < 1
low_indices <- which(low)
low_indices

estados <- murders$state[low_indices]
estados

# Definir los estados del noreste
northeast_states <- c("ME", "NH", "VT", "MA", "RI", "CT", "NY", "NJ", "PA")
northeast_low <- low &(murders$abb %in% northeast_states)

north_east_states_with_low_murder_rate <- murders$state[northeast_low]

north_east_states_with_low_murder_rate
# northeast_estados <- murders$state(northeast_low)
# northeast_estados
