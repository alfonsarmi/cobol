IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO-WORLD.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 NAME PIC X(20) VALUE 'Mundo'.
01 GREETING PIC X(30) VALUE SPACES.

PROCEDURE DIVISION.
    PERFORM ASK-NAME
    PERFORM GREET-USER
    STOP RUN.

ASK-NAME.
    DISPLAY '¿Cómo te llamas?'
    ACCEPT NAME.

GREET-USER.
    MOVE '¡Hola, ' TO GREETING
    STRING NAME '!' DELIMITED BY SIZE INTO GREETING
    DISPLAY GREETING.
