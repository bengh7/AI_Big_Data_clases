# Clase base Persona que representa a una persona genérica en el sistema hospitalario
# Aplica el principio de responsabilidad única (SRP) al manejar solo atributos personales
class Persona:
    def __init__(self, nombre, edad, genero):
        self.nombre = nombre
        self.edad = edad
        self.genero = genero

    # Método para mostrar la información personal
    def mostrar_info(self):
        print(f"Nombre: {self.nombre}, Edad: {self.edad}, Género: {self.genero}")

# Clase Paciente que hereda de Persona y agrega atributos específicos de un paciente
# Aplica el principio de herencia para extender funcionalidades sin modificar la clase base
class Paciente(Persona):
    def __init__(self, nombre, edad, genero, id_paciente, diagnostico):
        super().__init__(nombre, edad, genero)
        self.id_paciente = id_paciente
        self.diagnostico = diagnostico

    # Sobrescribe el método mostrar_info para incluir datos específicos del paciente
    def mostrar_info(self):
        super().mostrar_info()
        print(f"ID Paciente: {self.id_paciente}, Diagnóstico: {self.diagnostico}")

# Clase Medico que hereda de Persona y añade atributos y métodos relacionados con su rol
# Aplica el principio de herencia y mantiene una única responsabilidad
class Medico(Persona):
    def __init__(self, nombre, edad, genero, especialidad):
        super().__init__(nombre, edad, genero)
        self.especialidad = especialidad

    # Sobrescribe el método mostrar_info para incluir la especialidad del médico
    def mostrar_info(self):
       super().mostrar_info()
       print(f"Especialidad: {self.especialidad}")

    # Método para atender a un paciente, demostrando interacción entre clases
    def atender_paciente(self, paciente):
       print(f"El médico {self.nombre} está atendiendo al paciente {paciente.nombre}")

# Clase principal que orquesta la interacción entre pacientes y médicos
# Aplica el principio de inversión de dependencias al instanciar las clases específicas
class SistemaHospital:
    def ejecutar(self):
        # Creación de instancias de Paciente y Medico
       def ejecutar(self):
        paciente1 = Paciente("Juan Pérez", 30, "Masculino", "P001", "Hipertensión")
        medico1 = Medico("Dra. Ana Gómez", 35, "Femenino", "Cardiología")
        # Mostrar información del paciente
        print("Información del paciente:")
        paciente1.mostrar_info()

        # Mostrar información del médico
        print("\nInformación del médico:")
        medico1.mostrar_info()

        # Simular la atención médica
        print("\nSimulación de atención médica:")
        medico1.atender_paciente(paciente1)

# Punto de entrada principal del programa
# Garantiza que el código solo se ejecuta cuando el script es ejecutado directamente
if __name__ == "__main__":
    sistema = SistemaHospital()
    sistema.ejecutar()
