@echo off
REM Problema 4 - F1.BAT
REM Primeste 2 parametri: S (subdirector) si F (fisier fara extensie).
REM Creeaza S, intra in S, apeleaza MENIU si, in functie de valoare:
REM   1 - creeaza prin copiere de la tastatura F.TXT
REM   2 - sorteaza F.TXT in F.SRT
REM   3 - afiseaza F.SRT
REM Daca valoarea e diferita de 0, apeleaza din nou MENIU.
REM La final afiseaza directorul curent si revine in directorul parinte.

REM Scrieti solutia mai jos:

if "%2"=="" (
    echo Utilizare: %0 S F
    goto :eof
)

if not exist %1 md %1
cd %1

:meniu
call ..\MENIU.BAT
set opt=%errorlevel%

if %opt%==1 copy con %2.TXT
if %opt%==2 sort %2.TXT > %2.SRT
if %opt%==3 type %2.SRT

if not %opt%==0 goto meniu

cd
cd ..

@echo off
echo 1 - Creare fisier
echo 2 - Sortare fisier
echo 3 - Afisare fisier sortat
echo 0 - Iesire
choice /c 0123 /n /m "Optiune: "
set /a val=%errorlevel%-1
exit /b %val%
