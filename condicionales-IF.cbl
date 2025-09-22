      *****************************************************************                       
      * Author: Rodrigo Oberti                                                                                                   
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDICIONALES.
      *****************************************************************
       ENVIRONMENT DIVISION. 
       CONFIGURATION SECTION. 
       SPECIAL-NAMES.
           CLASS A-D-UPPER IS "A" THRU "D"
           CLASS A-D-LOWER IS "a" THRU "d"
           CLASS ESPACIO IS SPACE
           CLASS BINARIO IS ZERO THRU "1".
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMERO1         PIC 9(2) VALUE 10.
       01 NUMERO2         PIC 9(1) VALUE 5.
       01 NUMERO3         PIC 9(2) VALUE 10.
       01 NUMERO4         PIC 9(2) VALUE 15.
       01 TEXTO1          PIC A(1) VALUE "A".
       01 TEXT2           PIC X    VALUE "B".
       01 TEXT2LOWER      PIC X    VALUE "c".
       01 TEXTO-ESPACIO   PIC X    VALUE SPACES.
       01 NUMERO-BINARIO  PIC XXXX VALUE "0101".
      ******************************************************************
       PROCEDURE DIVISION.
       MAIN-LOGIC.
           PERFORM ES-IGUAL
           PERFORM ES-IGUAL-SEGUNDA-OPCION
           PERFORM MAYOR-IGUAL-A
           PERFORM MAYOR-IGUAL-A-SEGUNDA-OPCION
           PERFORM MENOR-IGUAL-A
           PERFORM MENOR-IGUAL-A-SEGUNDA-OPCION
           PERFORM ES-NUMERICO
           PERFORM NO-ES-ALFABETICO
           PERFORM ES-ALFABETICO
           PERFORM ES-ALFABETICO-UPPER-CASE
           PERFORM ES-ALFABETICO-LOWER-CASE 
           PERFORM CALCULO
           PERFORM CON-SPECIAL-NAME-UPPER
           PERFORM CON-SPECIAL-NAME-LOWER
      *>     PERFORM CON-SPECIAL-NAME-OR
           PERFORM ES-UN-ESPACIO
           PERFORM ES-BINARIO
           STOP RUN.

       ES-IGUAL.
           IF NUMERO1 = NUMERO3 THEN
              DISPLAY NUMERO1 " ES IGUAL A ", NUMERO3
           END-IF.
       ES-IGUAL-SEGUNDA-OPCION.
           IF NUMERO1 IS EQUAL TO NUMERO3 THEN
              DISPLAY NUMERO1 " ES IGUAL A ", NUMERO3
           END-IF.    
       MAYOR-IGUAL-A.
           IF NUMERO1 >= NUMERO2 THEN
              DISPLAY NUMERO1 " ES MAYOR A ", NUMERO2
           END-IF.
       MAYOR-IGUAL-A-SEGUNDA-OPCION.
           IF NUMERO1 IS GREATER THAN OR EQUAL TO NUMERO2 THEN
              DISPLAY NUMERO1 " ES MAYOR A ", NUMERO2
           END-IF.
       MENOR-IGUAL-A.
           IF NUMERO2 <= NUMERO1 THEN
              DISPLAY NUMERO2 " ES MENOR A ", NUMERO1
           END-IF.
       MENOR-IGUAL-A-SEGUNDA-OPCION.
           IF NUMERO2 IS LESS THAN OR EQUAL TO NUMERO1 THEN
              DISPLAY NUMERO2 " ES MENOR A ", NUMERO1
           END-IF.
       ES-NUMERICO.
           IF NUMERO1 IS NUMERIC THEN
              DISPLAY NUMERO1 " ES NUMERICO"
           END-IF.       
       NO-ES-ALFABETICO.
           IF NUMERO1 IS NOT ALPHABETIC THEN
              DISPLAY NUMERO1 " NO ES ALFABETICO"
           END-IF.      
       ES-ALFABETICO.
           IF TEXTO1 IS ALPHABETIC THEN
              DISPLAY TEXTO1 " ES ALFABETICO"
           END-IF.    
       ES-ALFABETICO-UPPER-CASE.
           IF TEXTO1 IS ALPHABETIC-UPPER THEN
              DISPLAY TEXTO1 " ES ALFABETICO UPPER CASE"
           END-IF.        
       ES-ALFABETICO-LOWER-CASE.
           IF TEXTO1 IS NOT ALPHABETIC-LOWER THEN
              DISPLAY TEXTO1 " NO ES ALFABETICO LOWER CASE"
           END-IF.               
       CALCULO.
           IF NUMERO1 + NUMERO2 EQUAL NUMERO4 THEN
              DISPLAY "LA SUMA DE " NUMERO1 " Y " NUMERO2 " DA " NUMERO4
           END-IF.
       CON-SPECIAL-NAME-UPPER.
           IF TEXT2 IS A-D-UPPER THEN 
              DISPLAY TEXT2 " DENTRO DEL RANGO DE ABCD"
           END-IF.

       CON-SPECIAL-NAME-LOWER.
           IF TEXT2LOWER IS A-D-LOWER THEN 
              DISPLAY TEXT2LOWER " DENTRO DEL RANGO DE abcd"
           END-IF.

       *>CON-SPECIAL-NAME-OR.
       *>    IF TEXTO1 IS A-D-LOWER OR A-D-UPPER THEN 
       *>       DISPLAY TEXT2LOWER " DENTRO DEL RANGO DE abcd"
       *>    END-IF.

       ES-UN-ESPACIO.
           IF TEXTO-ESPACIO IS ESPACIO THEN
              DISPLAY TEXTO-ESPACIO " ES UN ESPACIO"
           END-IF.

       ES-BINARIO.
           IF NUMERO-BINARIO IS BINARIO THEN
              DISPLAY NUMERO-BINARIO " ES BINARIO"
           END-IF.
           
       END PROGRAM CONDICIONALES.