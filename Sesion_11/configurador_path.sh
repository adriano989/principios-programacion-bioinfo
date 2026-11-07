#!/bin/bash
# Nombre: Jose Adriano Gomez Corcuera | Clave de agente: AG11
# Mision 2: Linea de comunicacion

HERRAMIENTA="fastqc"
RUTA_HERRAMIENTA="$HOME/biotools/$HERRAMIENTA/bin"
mkdir -p "$RUTA_HERRAMIENTA"
export PATH="$PATH:$RUTA_HERRAMIENTA"

echo "Ruta de $HERRAMIENTA dentro del script:"
echo "$PATH" | tr ':' '\n' | grep "$HERRAMIENTA"

# Con bash, el PATH cambia en un proceso hijo.
# Al terminar, ese cambio no regresa a la terminal padre.
# Con source, el script corre en la terminal actual y la ruta permanece.
