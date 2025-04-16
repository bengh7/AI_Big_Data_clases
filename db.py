import sqlite3 #importamos sqlite3

#fucnion para inicializar la base de datos
def init_db():
    #conectamos a la base de datos (si no existe se crea)
    conn = sqlite3.connect('data.db')

    #creamos un cursor
    cursor = conn.cursor() #esto es para que nos permita ejecutar comandos SQL

    #creamos la tabla Pacientes si no existe
    cursor.execute('''
                   CREATE TABLE IF NOT EXISTS Pacientes (
                        id INTEGER PRIMARY KEY AUTOINCREMENT,
                        nombre TEXT NOT NULL,
                        edad INTEGER NOT NULL,
                        diagnostico TEXT NOT NULL
                   )
                   ''')
    
    #Creamos la tabla de Usuarios si no existe
    cursor.execute('''
                   CREATE TABLE IF NOT EXISTS Usuarios (
                        id INTEGER PRIMARY KEY AUTOINCREMENT,
                        usuario TEXT NOT NULL UNIQUE,
                        contraseña TEXT NOT NULL
                   )
                   ''')
    
    conn.commit() #guardamos los cambios
    conn.close() #cerramos la conexion

#Funcion para agregar un nuevo paciente
def agregar_paciente(nombre, edad, diagnostico):
    conn = sqlite3.connect('data.db')
    cursor = conn.cursor()
    cursor.execute('''
                   INSERT INTO Pacientes (nombre, edad, diagnostico)
                    VALUES (?, ?, ?)
                    ''',(nombre, edad, diagnostico))
    conn.commit()
    conn.close()

#Funcion para obtener todos los pacientes
def obtener_pacientes():
    try:
        conn = sqlite3.connect('data.db')   
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM Pacientes')
        pacientes = cursor.fetchall()
        conn.close()
        return pacientes
    except sqlite3.Error as e:
        print(f"Error al obtener los pacientes: {e}")
        return []
    

#Funcion para obtener un paciente por id
def obtener_paciente(id):
    conn = sqlite3.connect('data.db')
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM Pacientes WHERE id = ?', (id,))
    paciente = cursor.fetchone()
    conn.close()
    return paciente

#Funcion para actualizar el paciente
def actualizar_paciente(id, nombre, edad, diagnostico):
    conn = sqlite3.connect('data.db')
    cursor = conn.cursor()
    cursor.execute('''
                   UPDATE Pacientes
                   SET nombre = ?, edad = ?, diagnostico = ?
                   WHERE id = ?
                   ''', (nombre, edad, diagnostico, id))
    conn.commit()
    conn.close()

#Función eliminar panciente
def eliminar_paciente(id):
    #conectamos a la base de datos
    conn = sqlite3.connect('data.db')
    #creamos un cursor para ejecutar comandos SQL
    cursor = conn.cursor()
    #ejecutamos el comando SQL para eliminar el paciente
    cursor.execute('DELETE FROM Pacientes WHERE id = ?', (id,))
    #guardamos los cambios
    conn.commit()
    #cerramos conexión
    conn.close()

