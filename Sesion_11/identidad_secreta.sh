#!/bin/bash
# Nombre: Jose Adriano Gomez Corcuera | Clave de agente: AG11
# Mision 1: Identidad secreta

ORGANISMO="Escherichia coli"
CEPA="K-12"
TIPO_MUESTRA="cultivo puro"
RESPONSABLE="Jose Adriano Gomez Corcuera"
export LABORATORIO="Laboratorio Central de Genomica"
ID_MUESTRA="${ORGANISMO}_${CEPA}"
FECHA=$(date +"%Y-%m-%d")

echo "=========================================="
echo "             FICHA DE MUESTRA"
echo "=========================================="
echo " Organismo   : $ORGANISMO"
echo " Cepa        : $CEPA"
echo " Tipo        : $TIPO_MUESTRA"
echo " Responsable : $RESPONSABLE"
echo " Laboratorio : $LABORATORIO"
echo " Fecha       : $FECHA"
echo " ID          : $ID_MUESTRA"
echo "=========================================="

# $ID_MUESTRA_v1 busca una variable llamada ID_MUESTRA_v1.
# ${ID_MUESTRA}_v1 lee ID_MUESTRA y agrega el texto _v1.
