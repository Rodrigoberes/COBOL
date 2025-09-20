      ******************************************************************
      * Author: Rodrigo Oberti
      * Date: 20/09/2025
      * Purpose: Learning Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONTADOR.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 CONTADOR PIC 9(2) VALUE 1.

       PROCEDURE DIVISION.

       MAIN-PROCEDURE.
           PERFORM UNTIL CONTADOR > 10
           DISPLAY 'Cuenta: ' CONTADOR
           ADD 1 TO CONTADOR
           END-PERFORM.

           STOP RUN.

       END PROGRAM CONTADOR.
