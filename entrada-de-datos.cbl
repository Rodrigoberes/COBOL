      *****************************************************************                       
      * Author: Rodrigo Oberti                                                                                                   
      *****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ENTRADA-DE-DATOS.
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NOMBRE  PIC X(16) VALUE SPACES.
       01 APELLIDO  PIC X(32) VALUE SPACES.
       01 EDAD   PIC X(3) VALUE SPACES.
      ******************************************************************
       PROCEDURE DIVISION.

       FILL-THE-FORM.
           DISPLAY "PLEASE INTRODUCE YOUR NAME".
           ACCEPT NOMBRE.
           DISPLAY "PLEASE INTRODUCE YOUR SURNAME".
           ACCEPT APELLIDO.
           DISPLAY "PLEASE INTRODUCE YOUR AGE".
           ACCEPT EDAD.

       DISPLAY-FORM-DATA.     
           DISPLAY "ACCOUNT CREATED SUCCESFULLY"
           DISPLAY "NAME: ", NOMBRE.
           DISPLAY "SURNAME: ", APELLIDO.
           DISPLAY "AGE: ", EDAD "years old".


           STOP RUN.
       END PROGRAM ENTRADA-DE-DATOS.