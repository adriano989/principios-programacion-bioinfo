#!/bin/bash
# Nombre: Jose Adriano Gomez Corcuera | Clave de agente: AG11
# Mision 3: Bitacora de operaciones

RESPONSABLE="Jose Adriano Gomez Corcuera"
ORGANISMO="Escherichia coli"
CEPA="K-12"
HERRAMIENTA="fastqc"
FECHA=$(date +"%Y-%m-%d")
ESTADO="completado"

cat > informe_mision.txt << EOF
OPERACION EXPEDIENTE GENOMA
Responsable : $RESPONSABLE
Muestra     : ${ORGANISMO}_${CEPA}
Herramienta : $HERRAMIENTA
Fecha       : $FECHA
EOF

cat >> informe_mision.txt << 'EOF'
Estado: $ESTADO
EOF

cat informe_mision.txt
