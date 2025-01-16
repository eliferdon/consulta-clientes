# Proyecto CICS: Consulta de Clientes

Este proyecto muestra una aplicación CICS que hace consultas de información sobre clientes almacenados en una base de datos DB2. Básicamente, una pequeña maravilla retro para interactuar con mainframes.

## Características
- Consulta de clientes por su ID, así de directo.
- Interacción con el usuario a través de pantallas BMS.
- Recuperación de datos conectándose con DB2.

## Estructura del Proyecto
El proyecto está organizado en las siguientes carpetas (porque, sí, el orden importa aquí):
- `COBOL/`: El programa principal en COBOL.
- `JCL/`: Scripts JCL para compilar, enlazar y ejecutar.
- `BMS/`: Pantallas BMS que forman la interfaz de usuario.
- `DB2/`: Scripts para crear la tabla de clientes en DB2.
- `CICS/`: Configuración de la transacción en CICS.

## Cómo Ejecutar
1. Sube todos los archivos al mainframe (¡no te olvides de nada!).
2. Compila y enlaza el programa con `CompileCICS.jcl`.
3. Crea y carga la tabla de clientes en DB2 usando `DDL.sql`.
4. Configura la transacción en CICS con `StartupConfig.csd`.
5. Vincula el programa con el plan DB2 ejecutando `BindDB2.jcl`.

## Cómo Ejecutar en IBM Z Trial
¿No tienes un mainframe en casa? No pasa nada. IBM Z Trial te presta uno gratis. Aquí te va cómo aprovecharlo:

1. **Regístrate en IBM Z Trial**  
   - Ve a [IBM Z Trial](https://www.ibm.com/it-infrastructure/z/trial) y crea una cuenta. Es gratis, no duele.

2. **Configura el entorno**  
   - Sigue las instrucciones de IBM para conectarte. Necesitarás un emulador 3270 como [x3270](http://x3270.bgp.nu/) o algo similar.

3. **Sube los archivos al mainframe**  
   - Usa FTP o una herramienta como `Ind$File` para transferir los archivos. Asegúrate de organizarlos bien:
     - `COBOL/` para los programas.
     - `JCL/` para los scripts de compilación y ejecución.
     - `BMS/` para las pantallas.
     - `DB2/` para los scripts SQL.

4. **Compila y enlaza el programa**  
   - Ejecuta `CompileCICS.jcl` para que todo cobre vida.

5. **Configura la base de datos DB2**  
   - Usa el script `DDL.sql` para crear y cargar la tabla de clientes.

6. **Configura CICS**  
   - Crea la transacción en CICS con `StartupConfig.csd`.

7. **Vincula el plan DB2**  
   - Ejecuta `BindDB2.jcl` para conectar tu programa con la base de datos.

8. **Prueba el programa**  
   - Abre el emulador 3270, introduce el ID de transacción configurado (algo como `CLNT`) y prepárate para sorprenderte.

## Ejemplo
- **Entrada:** `ID de Cliente = C001`
- **Salida:** Nombre: Juan Perez Dirección: Calle Falsa 123 Saldo: 1500.00
