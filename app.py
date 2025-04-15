from flask import Flask, request, render_template, redirect, url_for, session, flash

import db
import secrets

app = Flask(__name__) # esto es una instancia para la aplicacion Flask
app.secret_key = secrets.token_hex(16) #esto es para la seguridad de la aplicacion, se genera una clave secreta aleatoria
#esto es para la seguridad de la aplicacion, se genera una clave secreta aleatoria

#Inicializar la base de datos
db.init_db()


@app.route("/") #esto se llama los decoradores
def index():
    #obtener la lista de pacientes de la base de datos
    pacientes = db.obtener_pacientes()

    return render_template("index.html", pacientes=pacientes)

    
@app.route('/nuevo_paciente', methods=['GET', 'POST']) #esto es para la ruta de nuevo paciente

def nuevo_paciente():
    if request.method == 'POST':
        #obtenemos los datos del formulario
        nombre = request.form["nombre"]
        edad = request.form["edad"]
        diagnostico = request.form["diagnostico"]

        if not nombre or not edad or not diagnostico:
            flash('Por favor complete todos los campos son obligatorios.')

            return redirect(url_for('nuevo_paciente'))

        #agregamos el nuevo paciente a la base de datos
        db.agregar_paciente(nombre, edad, diagnostico)
        flash('Paciente agregado exitosamente.')
        

        #redireccionamos a la pagina principal
        return redirect(url_for('index'))
     

#     #si la solicitud es GET, renderizamos el formulario

    return render_template('nuevo_paciente.html')

# Ruta para editar un paciente acepta get y post
@app.route('/editar_paciente/<int:id>', methods=['GET', 'POST'])
def editar_paciente(id):

    #obtenemos el paciente de la base de datos
    paciente = db.obtener_paciente(id)

    #si el formulario fue enviado con el 
    if request.method == 'POST':
        # obtenemos los datos del formulario
        nombre = request.form["nombre"]
        edad = request.form["edad"]
        diagnostico = request.form["diagnostico"]

        #verificamos que los campos no esten vacios
        if not nombre or not edad or not diagnostico:
            flash('Por favor complete todos los campos son obligatorios.')

            return redirect(url_for('editar_paciente', id=id))

        #actualizamos el paciente en la base de datos
        db.actualizar_paciente(id, nombre, int(edad), diagnostico)
        flash('Paciente actualizado exitosamente.')

        #redireccionamos a la pagina principal
        return redirect(url_for('index'))

    # Si la solicitu es GET, renderizamos el formulario con los datos del paciente
    return render_template('editar_paciente.html', paciente=paciente)

# define una ruta que responda a solicitudes POST para eliminar un paciente con un ID específico
@app.route('/eliminar_paciente/<int:id>', methods=['POST'])
def eliminar_paciente(id):

    #llamamos a la funcion eliminar_paciente de db.py
    db.eliminar_paciente(id)
    flash('Paciente eliminado exitosamente.')
    return redirect(url_for('index'))

app.run(host='0.0.0.0', port=5000, debug= True)