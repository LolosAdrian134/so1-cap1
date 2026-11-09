@echo off
REM Problema 7 - F3.BAT
REM Primeste ca parametru numele unui subdirector S pe care trebuie
REM sa il stearga impreuna cu toate fisierele pe care le contine.
REM Lansati F3.BAT avand ca parametri subdirectoarele create anterior.
REM Se presupune ca S nu contine alte subdirectoare.

REM Scrieti solutia mai jos:

if "%1"=="" (
    echo Utilizare: %0 S
    goto :eof
)

if not exist %1 (
    echo Directorul %1 nu exista.
    goto :eof
)

del /q %1\*.*
rd %1
echo Directorul %1 a fost sters.
