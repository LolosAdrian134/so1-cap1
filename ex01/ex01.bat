@echo off
REM Problema 1
REM Realizati un fisier de comenzi indirecte care primeste
REM 15 parametri pe care trebuie sa ii afiseze.

REM Scrieti solutia mai jos:
set nr=1

:bucla
if "%~1"=="" goto sfarsit
echo Parametrul %nr%: %1
set /a nr+=1
shift
goto bucla

:sfarsit
