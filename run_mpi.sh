#!/bin/bash

# Obtener el nombre del archivo sin la extensión .c
filename=$(basename -- "$1")
program_name="${filename%.*}"  # Eliminar la extensión .c del nombre del archivo

# Solicitar el número de procesos
echo "Por favor, ingrese el número de procesos:"
read np

# Verificar si el número de procesos es un número entero
if ! [[ "$np" =~ ^[0-9]+$ ]]; then
    echo "Por favor ingrese un número válido para los procesos."
    exit 1
fi

# Ejecutar el programa con mpirun
mpirun -np $np ./${program_name}