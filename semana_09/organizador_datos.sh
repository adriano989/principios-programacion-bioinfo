#!/bin/bash
# Autor: Gomez Corcuera José Adriano
# Fecha: 22 de octubre de 2026
# Proposito: organizar las carpetas de Operacion KPC.
echo "Montando base de operaciones: operacion_KPC ..."
mkdir -p operacion_KPC/{datos_crudos,datos_procesados,resultados,scripts,logs,referencias}
echo "Datos de entrada de Operacion KPC. Las secuencias son sinteticas para practicar." > operacion_KPC/datos_crudos/README.txt
echo "$(date): estructura de trabajo preparada." >> operacion_KPC/logs/registro.log
find operacion_KPC | sort
echo "Base de operaciones lista. Esperando secuencias..."
