#!/bin/bash
# Autor: Gomez Corcuera José Adriano
# Fecha: 22 de octubre de 2026
# Proposito: generar e inventariar un FASTA didactico.
# Secuencias sinteticas; no representan muestras clinicas.
mkdir -p operacion_KPC/datos_crudos
archivo="operacion_KPC/datos_crudos/aislados_uci.fasta"
cat > "$archivo" << 'FASTA'
>KP_UCI_001|Klebsiella_pneumoniae|paciente_01|sintetica
ATGCGTACGTTAGCTAGCTAGGCTAACCGTATCGATCGGATCCGATGCTAGCTACGATCGTA
>KP_UCI_002|Klebsiella_pneumoniae|paciente_02|sintetica
ATGCGTACGTTAGCTAGCTAGGCTAACCGTATCGATCGGATCCGATGCTAGCTACGATCATA
>KP_UCI_003|Klebsiella_pneumoniae|paciente_03|sintetica
ATGCGTACGTTAGCTAGCTAGGCTAACCGTATCGATCGGATCCGATGCTAGCTA
FASTA
echo "Secuencias interceptadas: $(grep -c '^>' "$archivo")"
echo
echo "Identificadores:"
grep '^>' "$archivo"
echo
echo "Longitud aproximada (incluye salto de linea):"
echo "KP_UCI_001 : $(grep -A1 '^>KP_UCI_001|' "$archivo" | tail -1 | wc -c) caracteres"
echo "KP_UCI_002 : $(grep -A1 '^>KP_UCI_002|' "$archivo" | tail -1 | wc -c) caracteres"
echo "KP_UCI_003 : $(grep -A1 '^>KP_UCI_003|' "$archivo" | tail -1 | wc -c) caracteres"
