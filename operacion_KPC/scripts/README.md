# Sesión 10 Operación KPC Parte 2

Los tres scripts se ejecutan desde la raíz del repositorio y usan los comandos vistos en clase.

El archivo de secuencias está en `operacion_KPC/datos_crudos/aislados_uci.fasta`. Son fragmentos simulados para practicar.

Dar permiso de ejecución a cada script:

```bash
chmod +x operacion_KPC/scripts/calculadora_secuencia.sh
chmod +x operacion_KPC/scripts/transcriptor.sh
chmod +x operacion_KPC/scripts/lector_genes.sh
```

Ejecutar cada uno por separado:

```bash
./operacion_KPC/scripts/calculadora_secuencia.sh
./operacion_KPC/scripts/transcriptor.sh
./operacion_KPC/scripts/lector_genes.sh
```

La calculadora y el transcriptor piden un ID: `KP_UCI_001`, `KP_UCI_002` o `KP_UCI_003`. Las longitudes son 60, 60 y 54 nucleótidos.

Para el lector se puede ingresar `KP_UCI_001.fasta` y la lista `blaKPC-2,blaSHV-11,blaTEM-1,ompK36`.

