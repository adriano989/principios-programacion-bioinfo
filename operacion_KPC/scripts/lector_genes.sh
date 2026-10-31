#!/bin/bash
# Autor: Gomez Corcuera José Adriano
# Fecha: 30 de octubre de 2026
# Proposito: obtener el ID del archivo y separar la lista de genes.

read -p "Archivo del aislado: " archivo
id=${archivo%.fasta}
read -p "Genes detectados: " genes

echo ""
echo "=== INFORME DE RESISTENCIA: $id ==="
echo "Gen principal     : ${genes%%,*}"
echo "Ultimo gen        : ${genes##*,}"
echo "Resto de la lista : ${genes#*,}"
