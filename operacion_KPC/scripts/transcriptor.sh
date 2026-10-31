#!/bin/bash
# Autor: Gomez Corcuera José Adriano
# Fecha: 30 de octubre de 2026
# Proposito: reemplazar las T del ADN por U para obtener el ARN.

read -p "ID del aislado: " id
adn=$(grep -A1 "$id" operacion_KPC/datos_crudos/aislados_uci.fasta | tail -1)
arn=${adn//T/U}

# La longitud no cambia porque cada T se reemplaza por una U, sin agregar ni quitar bases.
echo ""
echo "=== TRANSCRIPCION: $id ==="
echo "ADN          : $adn"
echo "ARN          : $arn"
echo "Longitud ADN : ${#adn} bases"
echo "Longitud ARN : ${#arn} bases"
