#!/bin/bash

vidas_jugador=1
nombre_jugador=""

clear_screen() {
    clear
}


izquierda() {
    cat << "EOF"
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣾⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⠿⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢐⢦⡉⢍⢬⢨⠐⠰⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠈⡇⡪⡊⡜⡰⡩⡂⢽⣿⣿⣿⠁⡀⠹⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢡⢆⢽⡟⠠⢐⢄⠔⠄⠄⡢⡐⡠⢹⣿⡿⢀⠣⢄⠀⠛⢿⣿⣿⣿⣿⣿⣿⣿⣯
⣿⣿⣿⣿⣿⣿⣿⣿⡟⡰⡽⢁⣿⡇⡱⠈⠆⠬⢁⢁⠐⠔⠂⣿⣿⡇⠰⡑⢅⢣⢂⠀⠙⣿⣿⣿⣿⣿⣿⢿
⣿⣿⣿⣿⣿⣿⣿⡿⢡⡳⢡⣿⣿⠃⡜⢌⢆⡖⡦⡢⣜⢦⢡⣿⣿⠁⠌⠜⢌⠢⢕⠅⢀⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⠃⡞⢡⣿⡟⢡⠪⡨⢮⢺⡪⡳⡝⣊⣥⣿⣿⣟⠠⠡⡑⢄⠑⠌⠄⢰⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⠐⠅⡿⠩⡐⠥⡑⣎⢏⢧⡫⣺⢡⢿⡿⡿⣿⠇⢈⠢⡈⠢⠡⡑⠀⣾⣿⣿⣿⣿⣿⣿⡿
⣿⣿⣿⣿⣿⣿⣿⡌⢊⢐⢅⠣⢣⢱⡱⣝⢵⡹⣪⠀⠀⠀⠀⠀⠀⠀⢕⠨⡈⡂⡂⠠⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡧⢐⠕⡌⢎⠢⢅⢜⠺⡈⣞⡺⡀⠀⠠⠀⡀⠀⠀⠀⢕⠐⢌⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡇⢸⠨⢌⢆⢍⠆⡕⡄⢣⢸⡪⡆⠀⠂⠀⠀⠀⠁⠀⠀⡑⡐⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡀⢇⠕⢔⠅⡕⢌⠆⠜⡀⢗⢧⠀⠀⠄⠂⠁⠀⠐⠀⠐⠀⢐⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣷⣌⡘⠔⠥⡡⡥⡐⣿⣿⡌⠓⠑⠀⠀⠀⠀⠀⠀⠀⠀⠄⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣷⣶⣶⣾⣿⣿⣿⣶⣶⣷⣾⣶⣷⣷⣷⣷⣷⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿

EOF
}

derecha(){
    cat << "EOF"
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠉⡻⣿⣿⣿⣿⠿⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⡇⠕⢠⢰⢰⢠⠡⣎⠇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⢀⠈⣿⣿⣿⠗⠨⠊⠆⠕⡌⡪⢸⠐⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⠟⠃⢀⢔⢕⠄⢿⣿⣇⠂⠎⡒⠨⢐⠔⢔⢐⠠⢹⣏⢔⣆⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⡿⠁⢀⢆⠇⡕⡡⡃⢸⣿⣷⠈⡂⢊⠈⡀⡑⠔⢁⠬⢸⣿⡄⢗⣅⢻⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⠀⢑⠱⡑⠌⡂⠢⠈⣿⣿⡌⢎⡗⣜⢖⢵⢥⡑⠕⠌⢿⣿⣌⢺⡂⢿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡇⠀⠕⢄⠑⠌⠌⠄⣻⣿⣿⣶⣍⢪⡳⣕⢧⡳⡍⡪⡨⠻⣿⡆⡛⡘⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣷⠀⢑⠄⠅⢅⠅⠅⠸⠿⠿⠿⠿⠆⣏⢮⡺⡜⡮⡢⡑⡑⢌⠻⠨⡐⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡀⠠⠡⠡⡑⠌⠀⠀⠀⠀⠀⠀⠀⡺⣜⢮⢳⣹⠰⡡⠣⣑⢑⠨⢰⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢕⠑⠌⠀⢀⠂⠀⠄⠂⠀⢀⡯⡺⢐⠇⢅⢪⠨⣊⢢⢑⢅⢺⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⢂⠅⠁⠠⠀⢀⠀⠄⠀⠀⡰⣝⠅⡎⠌⡆⢕⠱⡐⢕⠌⡆⣺⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠐⠀⢀⠀⢀⠀⡀⠀⠀⢁⢞⠮⣠⡃⡑⢜⢰⢑⢅⠣⡱⢠⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⡀⠀⡀⠀⠀⢀⠀⠁⠉⣰⣿⣿⡅⠖⠴⢐⢑⣡⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⢿⡿⣿⢿⡿⣿⢿⡿⣿⢿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⢿

EOF
}

neutral() {
    for ((i=1; i<=3; i++)); do  # Realiza la animación 3 veces
        izquierda
        sleep 0.5  # Espera 0.5 segundos
        clear_screen  # Borra la pantalla
        derecha
        sleep 0.5  # Espera 0.5 segundos
        clear_screen
    done
}

# Definición de la función mostrar_vidas
mostrar_vidas() {
    echo "Tienes $vidas_jugador vidas."
}

# Definición de la función correcto
correcto() {
    echo "¡Correcto!"
    animacion_vidas1
    vidas_jugador=$((vidas_jugador + 1))
    mostrar_vidas
    read -p "Presiona Enter para continuar..."
}

gatocorazon(){
    cat << "EOF"
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢟⣛⠻⢿⡿⢟⢛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠁⡂⢑⠈⡐⠡⠁⡑⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠁⠠⠀⠂⠐⠀⢁⠀⠀⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠐⠀⠁⢈⠀⠄⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠁⠀⠀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠠⠩⡐⢔⠔⠌⡊⢔⠔⢌⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢉⠩⡐⠅⢕⢑⠢⠑⡡⡂⢇⠪⡂⡣⡑⢔⡘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢆⠱⡡⡱⠡⠣⡘⡈⡆⡪⠢⡃⣊⢢⢊⠆⡆⣙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⣘⡓⢌⠪⠰⠑⢅⣥⠢⡐⢌⢌⡈⡂⢅⡊⡂⠥⢟⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠻⣺⢦⡵⡭⣵⣲⢦⣗⣖⡦⣦⣄⣥⢥⢶⣺⣜⢟⣡⣿⣿⣿⣿⣿⣿⣿⣿⣿
⡿⣿⢿⢿⡿⡿⣿⢿⢿⡿⡿⡿⡦⣭⡹⡙⡺⢚⠻⠚⠗⠟⠗⡓⡫⡫⡭⡦⡶⡿⡿⡿⡿⡿⡿⡿⡿⡿⡿⡿

EOF
}

gatoroto(){
    cat << "EOF"
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢛⢝⢙⢻⡋⠢⠒⠌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⡐⠀⠂⢣⠀⡁⠈⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠈⡔⠋⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠁⢹⠀⣠⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠠⢉⢅⢂⠆⠆⡃⠕⡄⢍⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢉⢋⢐⠌⢌⠪⢄⠊⡰⠨⡒⢌⡊⢆⠕⢔⢙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠆⢪⠢⡑⢅⢃⡒⠨⢌⠪⡸⡐⢌⢆⠕⢅⠅⡚⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⡰⡛⠄⠣⠢⠣⢂⣬⢨⠨⡨⡀⡃⡑⡨⡘⢔⠡⣟⡇⢿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠻⣵⢮⡥⣕⣵⣲⢼⢴⣲⢴⡬⣌⡬⡴⣜⡦⣝⢞⣱⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣍⣫⡓⢗⠻⠝⠟⠾⠽⠝⢞⢫⣫⣩⣭⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿


EOF
}

malo() {
    for ((i=1; i<=3; i++)); do  # Realiza la animación 3 veces
        gatocorazon
        sleep 0.5  # Espera 0.5 segundos
        clear_screen  # Borra la pantalla
        gatoroto
        sleep 0.5  # Espera 0.5 segundos
        clear_screen  # Borra la pantalla
    done
}


corazones1(){
    cat << "EOF"
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⡟⠫⠫⠛⠻⠛⠝⠝⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠑⠑⡉⢋⠉⠊⠊⠙⣿⣿⣿⣿
⣿⣿⣿⣆⡀⠀⡁⢈⠀⠂⠀⣡⣾⣿⣿⡿⡛⡛⡛⠻⠟⡛⡛⠻⢿⣿⣿⣦⣀⠁⠀⠄⠀⠁⣀⣶⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣶⣤⣀⣤⣶⣿⣿⣿⣿⣿⣧⠀⠀⡀⠡⠐⠀⡀⢀⣼⣿⣿⣿⣿⣷⣶⣤⣶⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡟⣩⠼⠬⣝⡛⢿⣿⢿⠿⢶⠤⡀⡠⣤⡶⢟⣛⡭⠵⢭⡙⣿⣿⣟⢯⢻⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡅⡇⢌⢂⣢⣭⣷⣶⣾⣾⣿⣿⣿⣾⣶⣶⣯⣔⣐⠑⢐⡇⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡧⢹⣴⣿⡿⠟⢟⠿⣿⣿⣿⣿⣿⣿⣿⠻⡻⠿⣿⣷⣼⠰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⡿⢛⢡⣿⡿⣿⣿⠋⠩⠙⣿⣿⣿⣿⣿⣿⡟⠉⠍⢻⣿⡿⣿⣧⡙⡻⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⢧⢎⠑⡍⡎⢝⣳⣶⣾⣿⠿⡭⠪⠽⢿⣿⣶⣶⢏⢝⢜⠜⢌⠶⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣬⡓⠛⠿⠿⢿⢿⡾⡿⡿⡿⠿⠿⠟⡛⠪⣵⣾⣿⣿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣴⣿⣷⣾⡀⠔⠄⡀⠠⠢⢨⣾⣾⣾⣧⠹⣿⣿⣿⡘⣷⡘⣌⢻⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡿⢟⢂⡟⢿⣿⣿⣿⣾⣿⣿⣿⣷⣿⣿⣿⣿⢻⢅⠻⠿⣿⡇⣺⡇⣹⢸⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡿⢰⣿⣿⣷⠸⣿⣿⣿⡏⣿⣿⡯⢹⣿⣿⣿⠇⣼⣿⣿⡷⢘⣡⠟⡡⢃⣾⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣌⠻⣿⣿⡆⢻⣿⣿⡇⢸⣻⡇⢸⣿⣿⡿⢠⣻⣿⠟⣃⣈⣢⣭⣶⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣴⣵⣌⣙⣋⣣⣴⣴⣦⣌⣋⣛⣡⣦⣦⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠉⠊⠌⠩⠩⠘⢈⠉⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠩⠑⡉⠋⠍⡑⠉⠛⣿⣿⣿⣿⣿⣷⣄⡐⠀⠂⠐⠈⢀⣠⣾⣿⣿⣿⣿⣿⡏⠁⠊⢂⠉⠅⠂⠑⠈⢻⣿⣿
⡀⠠⠀⢁⠠⠀⣐⣼⣿⣿⣿⣿⣿⡿⠿⠿⠶⣦⠴⢞⠿⢿⣿⣿⣿⣿⣿⣿⣷⣄⡐⠀⠀⠂⠁⣀⣴⣿⣿⣿
⣿⣷⣦⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⡈⠀⢁⠁⠄⠈⠄⠈⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⡀⠀⢁⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿


EOF
}
corazones2(){
    cat << "EOF"
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⢿⢿⢿⣿⢿⢿⢿⣿⣿⣿⣿⣿⣿⡿⡿⡿⣿⡿⡿⢿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⠀⠐⠀⠂⠐⠐⠀⠂⢈⣿⣿⣿⣿⡇⠀⠄⠂⡀⠂⢈⠀⠄⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣦⣄⡁⠈⣀⣄⣶⣿⣿⣿⣿⣿⣿⣷⣤⣀⠀⢈⣀⣤⣾⣿⣿⣿⣿⣿⣿⣿⢿⢿⢿⣿⡿⡿⡿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡟⣱⠮⠮⢭⣛⠿⡿⠿⠿⠿⠿⠿⠿⡿⡿⢟⣫⠭⠮⢮⡙⣿⡁⠀⠂⠐⢀⠐⠀⠄⠀⣿
⣿⣿⣿⣿⣿⣿⣿⡅⣇⠌⢌⣤⣼⣷⣾⣿⣿⣿⣿⣿⣿⣾⣶⣯⣴⣈⠌⢄⡇⣽⣿⣦⣄⡁⠀⡀⣄⣦⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡷⣸⣾⣿⣿⣛⣛⣛⣿⣿⣿⣿⣿⣿⣿⣛⣛⡻⣿⣿⣾⡐⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣟⡙⢴⢿⡻⣻⣿⠁⠑⠉⣿⣿⣿⣿⣿⣿⣏⠁⠃⣹⣿⢟⡿⣷⠌⣫⠛⠩⠩⠉⡛⠩⠩⠉⠛
⣿⣿⣿⣿⣿⣿⣳⣣⣐⠱⢢⣣⣻⣿⣿⣿⣛⢖⣐⣚⣻⣿⣿⣿⣕⣜⢔⢕⣠⣛⣞⣦⣀⠀⠂⠀⠂⠀⣂⣴
⣿⠋⠑⡉⠊⡋⠑⠑⢉⠹⣶⢎⣩⡙⡛⠛⠛⠟⠟⠻⠛⢛⢛⢩⣩⡐⣾⣿⣿⡿⢛⡙⢛⠷⣶⣤⣶⣿⣿⣿
⣿⣦⣀⠀⠄⠐⠈⢀⣠⣼⠇⣾⣿⣿⣿⣅⣡⣡⣤⣈⣌⣰⣿⣿⣿⣷⡘⣿⣿⣿⡌⢿⡌⢧⢹⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣶⣴⣾⣿⢋⣭⣦⡏⢹⣿⣿⣿⡿⣿⣿⣿⢿⣿⣿⣿⡟⢹⣦⣭⡝⢿⠇⣽⡇⡽⢸⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣷⠸⣿⣿⣿⡈⣿⣿⣿⡇⡻⣿⡧⢸⣿⣿⣿⠁⣾⣿⣿⡟⠠⢞⠩⣊⣴⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣧⣍⣛⡛⢇⠹⢿⡿⡇⠸⡙⢇⠸⡿⣿⠏⡘⢝⣛⣩⣴⣶⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⡿⠻⢛⢛⠻⠟⡛⡛⠻⢿⣿⣷⣶⣶⣾⣿⣿⣿⣶⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣧⡀⠠⠀⠂⠐⠀⠀⢂⣼⣿⣿⣿⣿⣿⣿⡟⠙⠍⠋⡛⠋⠍⠍⠙⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣶⣤⣄⣐⣬⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠁⠠⠈⠀⠄⣡⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿

EOF
}
bueno() {
    for ((i=1; i<=3; i++)); do  # Realiza la animación 3 veces
        corazones1
        sleep 0.5  # Espera 0.5 segundos
        clear_screen  # Borra la pantalla
        corazones2
        sleep 0.5  # Espera 0.5 segundos
        clear_screen  # Borra la pantalla
    done
}

# Definición de la función animacion_vidas1
animacion_vidas1() {
    for ((i=1; i<=2; i++)); do  # Realiza la animación 2 veces
        echo "🧡"
        sleep 0.5  # Espera 0.5 segundos
        clear_screen  # Borra la pantalla
        echo "💚"
        sleep 0.5  # Espera 0.5 segundos
        clear_screen  # Borra la pantalla
    done
}

# Definición de la función animacion_vidas
animacion_vidas() {
    for ((i=1; i<=2; i++)); do  # Realiza la animación 2 veces
        echo "🧡"
        sleep 0.5  # Espera 0.5 segundos
        clear_screen  # Borra la pantalla
        echo "💔"
        sleep 0.5  # Espera 0.5 segundos
        clear_screen  # Borra la pantalla
    done
}

# Definición de la función incorrecto
incorrecto() {
    echo "¡Incorrecto!"
    animacion_vidas
    ((vidas_jugador -= 1))
    mostrar_vidas
    read -p "Presiona Enter para continuar..."
}

historia() {
   
    echo "¡Hola jugador! ¿Cuál es tu nombre? "
        read nombre
    
    nombre_jugador=$nombre
    echo "En los albores de la creación, cuando el mundo aún estaba en su infancia"
    echo "existía una única verdad: los gatitos tenían solo una vida. Sin embargo, en este"
    echo "tiempo remoto, un pequeño gatito llamado $nombre desafió el orden establecido en"
    echo "una apuesta valiente con el mismísimo dios 'Tuxtter'."
    read -p "Presiona Enter para empezar..."

    clear_screen
    echo "Eres la pieza clave en esta historia legendaria. Con cada respuesta correcta,"
    echo "te acercarás un paso más a la gloria y el reconocimiento eterno. Pero ten cuidado, cada"
    echo "elección tiene consecuencias"
    read -p "Presiona Enter para continuar..."

    clear_screen
    echo "Dios: ¿Una apuesta, pequeño gatito? Me intriga. ¿Qué es lo que propones?"
    read -p "Presiona Enter para continuar..."

    clear_screen
    echo "$nombre: Apostaré mi única vida a cambio de la oportunidad de responder a tus"
    echo "siete preguntas. Si respondo correctamente a todas, ¿podrías otorgarme siete vidas en lugar"
    echo "de una?"
    read -p "Presiona Enter para continuar..."

    clear_screen
    echo "Dios: Interesante proposición, $nombre. Pero ten en cuenta que mis preguntas son"
    echo "desafiantes y no todos han sido capaces de responderlas."
    read -p "Presiona Enter para continuar..."

    clear_screen
    echo "$nombre: Lo sé, Señor, pero estoy dispuesto a enfrentar cualquier desafío para"
    echo "demostrar mi valentía y sabiduría."
    read -p "Presiona Enter para continuar..."

    clear_screen
    echo "Dios: Entendido. ¡Comencemos la apuesta!"
    echo "¿Qué comando muestra el historial de comandos?"
    echo -e "1. Clear"
    echo -e "2.history"
    echo -e "3.cat"
    read -e decision

    if [ "$decision" = "1" ]; then
        incorrecto
        Pregunta2
    elif [ "$decision" = "2" ]; then
        correcto
        Pregunta2
    elif [ "$decision" = "3" ]; then
        incorrecto
        Pregunta2
    else
        echo "¡Comando no reconocido!"
        historia
    fi
}

# Función para la pregunta 2
Pregunta2() {
    clear_screen
    echo "¿El comando sudo sirve para ejecutar comandos con permisos de superusuario?"
    echo -e "1.VERDADERO"
    echo -e "2.FALSO"
    read -e decision

    if [ "$decision" = "1" ]; then
        correcto
        Pregunta3
    elif [ "$decision" = "2" ]; then
        incorrecto
        Pregunta3
    else
        echo "¡Comando no reconocido!"
        Pregunta2
    fi
}

# Función para la pregunta 3
Pregunta3() {
    clear_screen
    echo "¿Para qué se utiliza el comando clear?"
    echo -e "1. Para limpiar pantalla"
    echo -e "2. Para crear y editar archivos"
    echo -e "3. Para cambiar de directorio"
    read -e decision
    if [ "$decision" = "1" ]; then
        correcto
        Pregunta4
    elif [ "$decision" = "2" ] || [ "$decision" = "3" ]; then
        incorrecto
        Pregunta4
    else
        echo "¡Comando no reconocido!"
        Pregunta3
    fi
}

# Función para la pregunta 4
Pregunta4() {
    clear_screen
    echo "¿Para qué sirve el comando vi?"
    echo -e "1.  Se utiliza para crear y editar directorios"
    echo -e "2. Solo para editar"
    echo -e "3. Se utiliza para crear y editar archivos de texto"
    read -e decision
    if [ "$decision" = "1" ] || [ "$decision" = "2" ]; then
        incorrecto
        Pregunta5
    elif [ "$decision" = "3" ]; then
        correcto
        Pregunta5
    else
        echo "¡Comando no reconocido!"
        Pregunta4
    fi
}

# Función para la pregunta 5
Pregunta5() {
    clear_screen
    echo "¿Qué diferencia hay entre el comando rm y rmdir?"
    echo -e "1.'rm' es para eliminar directorios y 'rmdir' es para eliminar archivos"
    echo -e "2. rm' y 'rmdir' son lo mismo"
    echo -e "3. 'rm' es para eliminar archivos y 'rmdir' es para eliminar directorios"
    echo ""
    read -e decision
  
    if [ "$decision" = "1" ]; then
        incorrecto
        Pregunta6
    elif [ "$decision" = "2" ]; then
        incorrecto
        Pregunta6
    elif [ "$decision" = "3" ]; then
        correcto
        Pregunta6
    else
        echo "¡Comando no reconocido!"
        Pregunta5
    fi
}
Pregunta6() {
    clear_screen
    echo "¿Cuál es la sintaxis correcta para usar el comando 'grep' y buscar la palabra 'hola' en el archivo 'mundo.txt'?"
    echo -e "1.grep mundo hola.txt2."
    echo -e "2. Grep 'hola' mundo.txt."
    echo -e "3. grep hola mundo.txt"
    echo ""
    read -e decision
    
    if [ "$decision" = "1" ] || [ "$decision" = "2" ]; then
        incorrecto
        Pregunta7
    elif [ "$decision" = "3" ]; then
        correcto
        Pregunta7
    else
        echo "¡Comando no reconocido!"
        Pregunta6
    fi
}

# Función para la pregunta 7
Pregunta7() {
    clear_screen
    echo "¿Qué permisos está otorgando el comando 'chmod 705 hola.txt' al archivo 'hola.txt' en el grupo?"
    echo -e "1.Ejecutar y leer."
    echo -e "2. Ninguno"
    echo -e "3. Todos los permisos."
    echo ""
    read -e decision

    if [ "$decision" = "1" ] || [ "$decision" = "3" ]; then
        incorrecto
        final
    elif [ "$decision" = "2" ]; then
        correcto
        final
    else
        echo "¡Comando no reconocido!"
        Pregunta7
    fi
}
final() {
    if [ "$vidas_jugador" -le 3 ]; then
        clear_screen
        echo "¡Oh no! No lograste responder suficientes preguntas correctamente. Final Malo."
        read -p "Presiona Enter para continuar..."
        clear_screen
        echo "$nombre_jugador: Oh, gran Dios, he luchado con todas mis fuerzas, pero temo que no he sido capaz de responder suficientes preguntas correctamente."
        read -p "Presiona Enter para continuar..."
        clear_screen
        echo "Dios: Lo siento, $nombre_jugador, pero las reglas de nuestra apuesta son inmutables. Al no cumplir tu parte del trato, no puedo otorgarte las siete vidas que deseabas."
        read -p "Presiona Enter para continuar..."
        clear_screen
        echo "$nombre_jugador: Entiendo, mi Señor. Acepto mi destino con humildad y espero que otros puedan aprender de mis errores."
        read -p "Presiona Enter para continuar..."
        clear_screen
        malo
    elif [ "$vidas_jugador" -le 6 ]; then
        clear_screen
        echo "¡Has logrado sobrevivir, pero no fue fácil. Final Neutral."
        read -p "Presiona Enter para continuar..."
        clear_screen
        echo "$nombre_jugador: Oh, Dios, he logrado responder a algunas de tus preguntas, pero no todas. ¿Qué sucederá ahora? ¿Perderé mi vida por no haber respondido todas las preguntas?."
        read -p "Presiona Enter para continuar..."
        clear_screen
        echo "Dios: No, $nombre_jugador. Aunque no has alcanzado todas las respuestas, tu valentía y sabiduría merecen respeto. No te quitaré tu vida."
        read -p "Presiona Enter para continuar..."
        clear_screen
        echo "$nombre_jugador: ¿Qué debo hacer ahora, mi Señor?"
        read -p "Presiona Enter para continuar..."
        clear_screen
        echo "Dios: Continúa tu viaje con determinación, $nombre_jugador. Aprende de tus experiencias y sigue creciendo. El camino hacia la sabiduría está lleno de desafíos, pero tú tienes el coraje necesario para enfrentarlos."
        read -p "Presiona Enter para continuar..."
        clear_screen
        neutral
    else
        clear_screen
        echo "¡Felicidades! Has completado la aventura con éxito. Final Bueno."
        read -p "Presiona Enter para continuar..."
        clear_screen
        echo "$nombre_jugador: ¡He respondido correctamente a todas tus preguntas, oh gran Dios!. ¿Cumplirás tu parte del trato?"
        read -p "Presiona Enter para continuar..."
        clear_screen
        echo "Dios: Por supuesto, $nombre_jugador. Has ganado tus siete vidas, como fue acordado. Pero hay más. Gracias a tu valentía, todos los gatitos del mundo recibirán el mismo regalo."
        read -p "Presiona Enter para continuar..."
        clear_screen
        echo "$nombre_jugador: ¡Gracias, Dios! Me llena de alegría saber que he contribuido a mejorar la vida de mis compañeros gatitos."
        read -p "Presiona Enter para continuar..."
        clear_screen
        echo "Dios: Que tus vidas te guíen hacia el camino de la sabiduría y la compasión, $nombre_jugador. Tu valentía perdurará en la memoria de generaciones venideras."
        read -p "Presiona Enter para continuar..."
        clear_screen
        bueno
    fi
}

# Llamada a la función principal
main() {
    historia
}

# Ejecutar main si el script se ejecuta directamente
if [ "$BASH_SOURCE" == "$0" ]; then
    main
fi
