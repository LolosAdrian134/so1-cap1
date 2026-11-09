@echo off
REM Problema 2
REM Scrieti un fisier de comenzi care sa stearga din directorul
REM curent toate fisierele care au extensie identica cu cea
REM primita ca parametru. Fisierul de comenzi sa accepte mai
REM multe extensii deodata.

REM Scrieti solutia mai jos:

if "%1"=="" (
    echo Utilizare: %0 extensie1 extensie2 ...
    goto :eof
)

:inceput
if "%1"=="" goto :eof
del /q *.%1
shift
goto inceput
