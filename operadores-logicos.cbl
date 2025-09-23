      *****************************************************************                       
      * Author: Rodrigo Oberti                                                                                                   
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERADORES-LOGICOS.
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NUMERO1  PIC 9(2) VALUE 10.
       77 NUMERO2  PIC 9(2) VALUE 10.
      ******************************************************************
       PROCEDURE DIVISION.

       OPERADORES-LOGICOS.
           IF NUMERO1 > 5 AND NUMERO2 < 11 THEN
              DISPLAY "SE CUMPLE LA CONDICION"
           IF NUMERO1 > 5 OR NUMERO2 < 11 THEN
               DISPLAY "SE CUMPLE LA CONDICION"
           IF NUMERO1 IS NOT < 5 THEN
               DISPLAY "SE CUMPLE LA CONDICION"
           IF (NUMERO1 > 9 OR < 5) AND (NUMERO1 NOT = 15 OR > 15) 
               AND (NUMERO2 = 10) THEN
               DISPLAY "SE CUMPLE LA CONDICION"    

                  STOP RUN.

       END PROGRAM OPERADORES-LOGICOS.