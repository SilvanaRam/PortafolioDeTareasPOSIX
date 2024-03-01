import subprocess
import re
import os
import time

MAX_TRIES = 3  # Número máximo de intentos permitidos
PASSWORD_ATTEMPTS = 0  # Contador de intentos
BLOCKED_TIME = 60  # Tiempo en segundos para bloquear después de exceder los intentos
SEARCH_COOLDOWN = 10  # Tiempo en segundos para esperar antes de realizar otra búsqueda

def run_cmd(cmd, get_output=True, timeout=35, stop_on_error=True):
    "Ejecutar cmd registrando la entrada y salida"
    output = ""
    try:
        if get_output:
            p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, universal_newlines=True)
            output, _ = p.communicate(timeout=timeout)
            rc = p.returncode
        else:
            subprocess.check_call(cmd, stderr=subprocess.STDOUT, shell=True, timeout=timeout)
    except subprocess.CalledProcessError as e:
        if stop_on_error:
            print(f'Error en sudo_cmd: {e.returncode}, {str(e)}')
    except Exception as e:
        if stop_on_error:
            print(f'Error en sudo_cmd: {str(e)}')
    return output

def check(test_str, cmd):
    global PASSWORD_ATTEMPTS

    pattern = r'[^\.acflst*\-\s]'
    if re.search(pattern, test_str):
        print(f'Carácter no válido en el comando {test_str}, solo se permiten caracteres en corchetes [.acflst*-]\n')
        print('Carácter no permitido.')
    else:
        try:
            output = run_cmd(cmd, get_output=True, stop_on_error=True)
            print(output)
        except OSError:
            print('Error desconocido.')

while PASSWORD_ATTEMPTS < MAX_TRIES:
    try:
        s = input('->->')
    except KeyboardInterrupt:
        break

    try:
        cmd = s
        check(cmd, cmd)
    except OSError:
        print('Error desconocido.')

    PASSWORD_ATTEMPTS += 1

    # Si se superan los intentos máximos, bloquear temporalmente
    if PASSWORD_ATTEMPTS >= MAX_TRIES:
        print(f'Se han superado los intentos máximos. Bloqueando temporalmente durante {BLOCKED_TIME} segundos.')
        time.sleep(BLOCKED_TIME)
        PASSWORD_ATTEMPTS = 0  # Reiniciar el contador después de desbloquear

    # Agregar un retraso antes de realizar otra búsqueda
    print(f'Esperando {SEARCH_COOLDOWN} segundos antes de realizar otra búsqueda.')
    time.sleep(SEARCH_COOLDOWN)

# Resto del código para la solicitud de contraseña de superusuario y apagar
sudo_password = input('Ingrese la contraseña de superusuario para apagar: ')
sudo_cmd = f'echo {sudo_password} | sudo -S shutdown now'
run_cmd(sudo_cmd, get_output=False, stop_on_error=False)
