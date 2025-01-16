# Proyecto CICS: Consulta de Clientes

Este proyecto es una demostración práctica de una aplicación CICS que permite consultar información de clientes almacenada en una base de datos DB2.

## Características
- Consulta de clientes por ID.
- Uso de pantallas BMS para la interacción con el usuario.
- Integración con DB2 para la recuperación de datos.

## Estructura del Proyecto
- `COBOL/`: Contiene el programa principal escrito en COBOL.
- `JCL/`: Scripts JCL para compilar, enlazar y ejecutar el programa.
- `BMS/`: Pantallas BMS utilizadas para la interfaz de usuario.
- `DB2/`: Contiene el script de creación de la tabla de clientes.
- `CICS/`: Configuración para la transacción CICS.

## Cómo Ejecutar
1. Subir los archivos al sistema mainframe.
2. Compilar y enlazar el programa utilizando `CompileCICS.jcl`.
3. Crear y cargar la tabla DB2 utilizando `DDL.sql`.
4. Asociar el programa y la transacción en CICS con `StartupConfig.csd`.
5. Ejecutar el programa utilizando `RunProgram.jcl`.

## Ejemplo
- Entrada: `ID de Cliente = C001`
- Salida: `Nombre: Juan Perez Dirección: Calle Falsa 123 Saldo: 1500.00`
