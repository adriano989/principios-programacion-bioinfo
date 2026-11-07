# Sesión 11: Operación Expediente Genoma

**Estudiante:** José Adriano Gomez Corcuera
**Clave de agente:** AG11

La actividad se realizó en Google Cloud Shell, usando las variables y los comandos de la teoría de la sesión 11.

## Archivos

| Actividad | Script | Qué se comprobó |
| --- | --- | --- |
| Misión 1: Identidad secreta | `identidad_secreta.sh` | Variables locales, una variable exportada y uso de llaves en el ID de la muestra. |
| Misión 2: Línea de comunicación | `configurador_path.sh` | Creación de la carpeta de una herramienta y diferencias en PATH al usar `bash` y `source`. |
| Misión 3: Bitácora de operaciones | `bitacora_operaciones.sh` | Escritura de un archivo con EOF sin comillas y adición de texto literal con EOF entre comillas. |
| Bonus: El agente fantasma | `agente_fantasma.sh` | Herencia de una variable exportada y alcance de una variable local. |

`informe_mision.txt` contiene el resultado de la misión 3. Las respuestas sobre las llaves, PATH y el alcance de las variables están en los comentarios de los scripts.

## Ejecución

Desde la raíz del repositorio, entrar a la carpeta:

```bash
cd Sesion_11
```

Los comandos se ejecutan uno por uno. En Cloud Shell se dieron permisos de ejecución a los cuatro scripts con:

```bash
chmod +x identidad_secreta.sh
chmod +x configurador_path.sh
chmod +x bitacora_operaciones.sh
chmod +x agente_fantasma.sh
```

Se revisó la sintaxis antes de ejecutar cada script:

```bash
bash -n identidad_secreta.sh
bash -n configurador_path.sh
bash -n bitacora_operaciones.sh
bash -n agente_fantasma.sh
```

### Misión 1

```bash
bash identidad_secreta.sh
```

### Misión 2

```bash
bash configurador_path.sh
echo "$PATH" | tr ':' '\n' | grep "fastqc"
source configurador_path.sh
echo "$PATH" | tr ':' '\n' | grep "fastqc"
```

Con `bash`, la nueva ruta solo queda en el proceso hijo. Con `source`, queda en la terminal actual durante la sesión. Se prepara la carpeta de FastQC; no se instala la herramienta. Si se vuelve a cargar el configurador, se añade otra vez la misma ruta.

### Misión 3

```bash
bash bitacora_operaciones.sh
```

El primer bloque de EOF reemplaza las variables por sus valores. El segundo conserva la última línea como `Estado: $ESTADO`.

### Bonus

```bash
bash agente_fantasma.sh
echo "Terminal tras bash: local=$CLAVE_LOCAL; exportada=$CLAVE_AGENTE"
source agente_fantasma.sh
echo "Terminal tras source: local=$CLAVE_LOCAL; exportada=$CLAVE_AGENTE"
```

En un proceso hijo, `CLAVE_LOCAL` aparece vacía y `CLAVE_AGENTE` conserva `AG11`. Después de usar `source`, las dos variables quedan en la terminal, pero solo la exportada se hereda a los procesos hijos.

## Evidencias

Las capturas de Nano, de cada ejecución y del historial se encuentran en [capturas](capturas/). El historial también está disponible en [history_sesion11.txt](history_sesion11.txt).

El historial corresponde a las pruebas en Cloud Shell, anteriores a la subida a GitHub. Incluye un nombre de archivo escrito con un espacio por error y su corrección. La fecha que mostró el servidor durante la actividad fue `2026-11-07`.

El commit de entrega usa el mensaje solicitado: `Sesion 11: Operación Expediente Genoma`.
