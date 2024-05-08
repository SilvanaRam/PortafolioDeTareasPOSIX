#!/bin/bash

# Función para verificar si un número es primo
is_prime() {
    local number=$1
    if [ $number -le 1 ]; then
        return 1
    fi
    if [ $number -eq 2 ]; then
        return 0
    fi
    if [ $(($number % 2)) -eq 0 ]; then
        return 1
    fi
    local i=3
    while [ $((i * i)) -le $number ]; do
        if [ $(($number % i)) -eq 0 ]; then
            return 1
        fi
        i=$((i + 2))
    done
    return 0
}

# Imprimir todos los números primos entre 60000 y 63000
printf "Números primos entre 60000 y 63000:/nt"
for ((num = 60000; num <= 63000; num++)); do
    if is_prime $num; then
        printf "%d\t" $num
    fi
done
printf "\n"

