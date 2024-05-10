#!/bin/bash

# Función para verificar la contraseña
verificar_contraseña() {
    local pass="$1"

    # Verificar longitud mínima
    if [ ${#pass} -lt 8 ]; then
        echo "La contraseña debe tener al menos 8 caracteres."
        return 1
    fi

    # Verificar al menos un carácter numérico
    if ! [[ "$pass" =~ [0-9] ]]; then
        echo "La contraseña debe contener al menos un número."
        return 1
    fi

# Verificar al menos un carácter especial
    if ! echo "$pass" | grep -e '[@#\$%&*+\-]' >/dev/null; then
        echo "La contraseña debe contener al menos un carácter especial."
        return 1
    fi
    # Si la contraseña cumple con todos los criterios, es válida
    echo "La contraseña es válida."
    return 0
}

# Verificar si se proporciona una contraseña como argumento
if [ $# -eq 0 ]; then
    echo "Por favor, proporcione una contraseña como argumento."
else
    verificar_contraseña "$1"
fi
