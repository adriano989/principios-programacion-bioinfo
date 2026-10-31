#!/bin/bash
# Autor: Gomez Corcuera José Adriano
# Fecha: 30 de octubre de 2026
# Proposito: medir la secuencia y mostrar sus extremos.

read -p "ID del aislado: " id
secuencia=$(grep -A1 "$id" operacion_KPC/datos_crudos/aislados_uci.fasta | tail -1)

echo ""
echo "=== MEDICION DE LA SECUENCIA ==="
echo "Aislado         : $id"
echo "Secuencia       : $secuencia"
echo "Longitud exacta : ${#secuencia} nucleotidos"
echo "Posible inicio  : ${secuencia:0:3}"
echo "Extremo final   : ${secuencia: -3}"
