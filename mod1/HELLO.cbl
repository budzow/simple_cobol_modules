       IDENTIFICATION DIVISION.                                
       PROGRAM-ID. HELLO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-MESSAGE          PIC X(30).                       

       PROCEDURE DIVISION.                                     

      * SENDING DATA TO SCREEN

           MOVE 'HELLO WORLD' TO WS-MESSAGE                
           EXEC CICS SEND TEXT                             
                FROM (WS-MESSAGE)                          
           END-EXEC                                        

      * TASK TERMINATES WITHOUT ANY INTERACTION FROM THE USER

           EXEC CICS RETURN END=EXEC.