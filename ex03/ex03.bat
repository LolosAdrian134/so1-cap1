@echo off
REM Problema 3
REM Realizati un fisier de comenzi care sa afiseze toate
REM fisierele care au extensia identica cu cea primita ca
REM parametru.

REM Scrieti solutia mai jos:

if "%1"=="" (
    echo Utilizare: %0 extensie
    goto :eof
)

dir /b *.%1
