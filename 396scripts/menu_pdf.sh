#!/bin/bash

# Nombre del archivo de texto
archivo="menu.txt"

# Comprobamos si el archivo existe
if [ ! -f "$archivo" ]; then
    echo "El archivo $archivo no existe."
    exit 1
fi

while true; do
	cat $archivo
	read -p "Ingrese una opción (escriba 'salir' para cerrar el menú)  " valor
	if [[ $valor == "salir" ]]; then
		echo "Saliendo del menú"
		break
	fi

	if [[ $valor -gt 0 && $valor -le 396 ]]; then 
		chmod +x "${valor}.sh"
		./"${valor}.sh"
		

	else
		echo "No se encontró el archivo"
	fi
	read -p "" valor
done


