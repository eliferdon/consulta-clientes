IDENTIFICATION DIVISION.
PROGRAM-ID. ConsultaClientes.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-Customer-ID  PIC X(10).
01 WS-Customer-Name PIC X(30).
01 WS-Customer-Balance PIC 9(7)V99.
EXEC SQL INCLUDE SQLCA END-EXEC.

PROCEDURE DIVISION.
Main-Procedure.
    EXEC CICS RECEIVE INTO(WS-Customer-ID)
    END-EXEC.

    EXEC SQL
        SELECT CustomerName, Balance
        INTO :WS-Customer-Name, :WS-Customer-Balance
        FROM Customers
        WHERE CustomerID = :WS-Customer-ID
    END-EXEC.

    EXEC CICS SEND
        FROM(WS-Customer-Name) LENGTH(30)
    END-EXEC.

    STOP RUN.