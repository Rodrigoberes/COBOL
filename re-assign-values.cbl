      *****************************************************************                       
      * Author: Rodrigo Oberti                                                                                                   
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. REASIGNAR-VALORES.
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NOMBRE     PIC X(16) VALUE "RODRIGO".
       01 APELLIDO   PIC X(32) VALUE SPACES.
       01 EDAD       PIC X(3)  VALUE SPACES.
       01 NUMERO     PIC 9(16) VALUE ZEROS.
       01 RESULTADO  PIC 9(16) VALUE ZEROS.
      ******************************************************************
       PROCEDURE DIVISION.
       MAIN-LOGIC.
           PERFORM DISPLAY-CURRENT-NAME
           PERFORM RE-ASSIGN-VALUES
           STOP RUN.

       DISPLAY-CURRENT-NAME.
           DISPLAY "CURRENT NAME IS: " NOMBRE.

       RE-ASSIGN-VALUES.
           DISPLAY "PLEASE INTRODUCE YOUR NEW NAME".
           ACCEPT NOMBRE.
           DISPLAY "YOU UPDATED YOUR NAME TO: " NOMBRE.

       END PROGRAM REASIGNAR-VALORES.