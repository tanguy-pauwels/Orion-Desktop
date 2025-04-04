@echo off

SET APP=app.py
SET VENV_DIR=venv

REM IF NOT EXIST %VENV_DIR% (
REM     echo Le répertoire venv n'existe pas. Assurez-vous de l'avoir créé.
REM     EXIT /B 1
REM )

REM CALL %VENV_DIR%\Scripts\activate

REM Lancer app.py
IF EXIST %APP% (
    echo Lancement de %APP%...
    %VENV_DIR%\Scripts\python.exe %APP%
) ELSE (
    echo Le fichier %APP% n'existe pas. Assurez-vous de l'avoir créé.
    EXIT /B 1
)