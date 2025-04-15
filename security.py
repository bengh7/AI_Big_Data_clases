import hashlib #genera hash de contraseña

#funcion para generar hash de contraseña
def hash_password(password):
    #usamos sha-256 para generar el hash
    return hashlib.sha256(password.encode()).hexdigest()

#funcion para verificar la contraseña
def verificar_password(password, hashed_password):
    #verificamos si la contraseña proporcionada coincide con el hash almacenado
    #comparamos el hash de la contraseña proporcionada con el almacenado
    return hash_password == hashed_password