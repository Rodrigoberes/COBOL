      *****************************************************************                       
      * Author: Rodrigo Oberti
      * Date: 22/09/2025                                                                                                 
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERACIONES.
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMERO1  PIC 9(2) VALUE 25.
       01 NUMERO2  PIC 9(2) VALUE 5.
       01 RESULT   PIC 9(3) VALUE ZEROES.
      ******************************************************************
       PROCEDURE DIVISION.

       DISPLAY-ON-TERMINAL.
      *> ADD == +
           ADD NUMERO1 TO NUMERO2 GIVING RESULT.
           DISPLAY RESULT.
      *> SUBTRACT == -
           SUBTRACT NUMERO1 FROM NUMERO2 GIVING RESULT.
           DISPLAY RESULT.
      *> MULTIPLY == *
           MULTIPLY NUMERO1 BY NUMERO2 GIVING RESULT.
           DISPLAY RESULT.  
      *> DIVIDE == /
           DIVIDE NUMERO1 BY NUMERO2 GIVING RESULT.
           DISPLAY RESULT.          

           STOP RUN.

       END PROGRAM OPERACIONES.