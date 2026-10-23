#!/bin/bash
# Autor: Gomez Corcuera José Adriano
# Fecha: 22 de octubre de 2026
# Proposito: mostrar informacion basica del entorno.
echo "=========================================="
echo "  INFORME DE RECONOCIMIENTO DEL SERVIDOR"
echo "=========================================="
echo "Agente (usuario) : $(whoami)"
echo "Fecha y hora     : $(date)"
echo "Ubicacion actual : $(pwd)"
echo "Espacio ocupado  : $(du -sh .)"
echo
echo "Archivos encontrados:"
ls -lh
