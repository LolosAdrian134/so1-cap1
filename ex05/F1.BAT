@echo off
REM Problema 5 - F1.BAT
REM Imbunatatiti F1.BAT, facand verificari de existenta a
REM fisierelor daca MENIU returneaza 2 sau 3.

REM Scrieti solutia mai jos:

if "%2"=="" (
    echo Utilizare: %0 S F
    goto :eof
)

if not exist %1 md %1
cd %1

:meniu
call ..\MENIU.EXE
set opt=%errorlevel%

if %opt%==1 copy con %2.TXT

if %opt%==2 (
    if exist %2.TXT (
        sort %2.TXT > %2.SRT
    ) else (
        echo Fisierul %2.TXT nu exista. Alegeti mai intai optiunea 1.
    )
)

if %opt%==3 (
    if exist %2.SRT (
        type %2.SRT
    ) else (
        echo Fisierul %2.SRT nu exista. Alegeti mai intai optiunea 2.
    )
)

if not %opt%==0 goto meniu

cd
cd ..
