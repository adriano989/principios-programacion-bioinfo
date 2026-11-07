#!/bin/bash
# Nombre: Jose Adriano Gomez Corcuera | Clave de agente: AG11
# La variable exportada se hereda al proceso hijo.
# La variable local no se hereda y aparece vacia en el hijo.

CLAVE_LOCAL="LOCAL_AG11"
export CLAVE_AGENTE="AG11"

echo "=== SCRIPT PRINCIPAL ==="
echo "Local    : $CLAVE_LOCAL"
echo "Exportada: $CLAVE_AGENTE"
echo "=== SUBSHELL ==="
bash -c 'echo "Local    : $CLAVE_LOCAL"; echo "Exportada: $CLAVE_AGENTE"'

# Con bash, ninguna de estas asignaciones nuevas queda en la terminal padre.
# Con source, ambas quedan en la terminal; solo CLAVE_AGENTE se hereda.
