      ******************************************************************
      * Author: Rodrigo Oberti
      * Date: 19/09/2025
      * Purpose: Learning Cobol
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADORA.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 NUM1           PIC 9(10)V99.
           01 NUM2           PIC 9(10)V99.
           01 RESULT         PIC 9(12)V99.
           01 OPERATOR       PIC X.
           01 INPUT-STRING   PIC X(20).
           01 CONTINUE-CALC  PIC X VALUE 'Y'.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM UNTIL CONTINUE-CALC = 'N' OR CONTINUE-CALC = 'n'
               DISPLAY "Enter first number: "
               ACCEPT INPUT-STRING
               MOVE INPUT-STRING TO NUM1

               DISPLAY "Enter operator (+, -, *, /): "
               ACCEPT OPERATOR

               DISPLAY "Enter second number: "
               ACCEPT INPUT-STRING
               MOVE INPUT-STRING TO NUM2

               EVALUATE OPERATOR
                   WHEN '+'
                       COMPUTE RESULT = NUM1 + NUM2
                   WHEN '-'
                       COMPUTE RESULT = NUM1 - NUM2
                   WHEN '*'
                       COMPUTE RESULT = NUM1 * NUM2
                   WHEN '/'
                       IF NUM2 = 0
                           DISPLAY "Error: Division by zero!"
                       ELSE
                           COMPUTE RESULT = NUM1 / NUM2
                       END-IF
                   WHEN OTHER
                       DISPLAY "Error: Invalid operator!"
               END-EVALUATE

               IF OPERATOR NOT = '/' OR NUM2 NOT = 0
                   DISPLAY "Result: " RESULT
               END-IF

               DISPLAY "Continue? (Y/N): "
               ACCEPT CONTINUE-CALC
           END-PERFORM

           DISPLAY "Calculator terminated."
           STOP RUN.
       END PROGRAM CALCULADORA.
