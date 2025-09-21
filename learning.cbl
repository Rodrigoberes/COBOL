      *****************************************************************                       
      * Author: Rodrigo Oberti                                                                                                   
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MYPROG.
       AUTHOR. MYNAME. 
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMERO1  PIC 9(1).
       01 NUMERO2  PIC 9(1).
       01 RESULT   PIC 9(1).
      ******************************************************************
       PROCEDURE DIVISION.

       DISPLAY-ON-TERMINAL.
           DISPLAY "PLS TYPE A NUMBER FROM 0 TO 10"
           ACCEPT NUMERO1.
           DISPLAY "PLS TYPE ANOTHER NUMBER FROM 0 TO 10"
           ACCEPT NUMERO2.
           COMPUTE RESULT = NUMERO1 + NUMERO2.
           DISPLAY "RESULT: " RESULT
           STOP RUN.

       END PROGRAM MYPROG.