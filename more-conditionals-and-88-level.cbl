      *****************************************************************                       
      * Author: Rodrigo Oberti                                                                                                   
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MORE-CONDICIONALES.
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 EDAD        PIC 9(3) VALUE ZERO.
          88 JOVEN             VALUE 1 THRU 39.
          88 MADURO            VALUE 40 THRU 65.
          88 ANCIANO           VALUE 66 THRU 100.
       *> NIVEL DE EJECUCION 88 DE LAS VARIABLES ESTA DISEÑADO
       *> PARA CREAR POSIBLES VALORES O RANGOS QUE SE VAN A 
       *> ALMACENAR EN UNA VARIABLE DEPENDIENDO DE LA CONDICION
       *> EN ESTE EJEMPLO VEMOS UNA ESTRUCTURA DE NIVEL 01
       *> EN ESTE CASO, LA VARIABLE PUEDE SER USADA COMO INDIVIDUAL
       *> SIN HACERLE CASO A LOS NIVELES 88, PERO A LA VEZ
       *> ESTA ASOCIADA A ESTOS RANGOS
       *> ESTOS RANGOS NO PUEDEN IR SIN UNA VARIABLE ANTES DE NIVEL 01
      ******************************************************************
       PROCEDURE DIVISION.
       MAIN-LOGIC.
           PERFORM COMPROBAR-EDAD
           STOP RUN.

       COMPROBAR-EDAD.
           DISPLAY "INTRODUCE TU EDAD"
           ACCEPT EDAD.

           IF JOVEN THEN
              DISPLAY "SOS JOVEN ", WITH NO ADVANCING 
           END-IF.

           IF MADURO THEN
              DISPLAY "SOS ADULTO ", WITH NO ADVANCING 
           END-IF.

           IF ANCIANO THEN
              DISPLAY "SOS ANCIANO ", WITH NO ADVANCING 
           END-IF.

           DISPLAY "TENES " EDAD " AÑOS".

       *> WITH NO ADVANCING en este caso sirve para unir el display de 
       *> los IF con el ultimo display    

       END PROGRAM MORE-CONDICIONALES.