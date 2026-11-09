@echo off
REM Problema 6 - F1.BAT
REM Modificati F1.BAT astfel incat sa nu mai primeasca parametri
REM formali, ci sa isi ia datele din variabilele interpretorului.

REM Scrieti solutia mai jos:

if "%S%"=="" (
    echo Variabila S nu este setata. Exemplu: set S=TEST
    goto :eof
)
if "%F%"=="" (
    echo Variabila F nu este setata. Exemplu: set F=DATE
    goto :eof
)

if not exist %S% md %S%
cd %S%

:meniu
call ..\MENIU.EXE
set opt=%errorlevel%

if %opt%==1 copy con %F%.TXT

if %opt%==2 (
    if exist %F%.TXT (
        sort %F%.TXT > %F%.SRT
    ) else (
        echo Fisierul %F%.TXT nu exista. Alegeti mai intai optiunea 1.
    )
)

if %opt%==3 (
    if exist %F%.SRT (
        type %F%.SRT
    ) else (
        echo Fisierul %F%.SRT nu exista. Alegeti mai intai optiunea 2.
    )
)

if not %opt%==0 goto meniu

cd
cd ..
