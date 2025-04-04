@echo off
SET VENV_DIR=venv
SET REQUIREMENTS=requirements.txt
SET APP=app.py

REM Vérifier si le répertoire venv existe
IF NOT EXIST %VENV_DIR% (
    echo Création de l'environnement virtuel...
    python -m venv %VENV_DIR%
)


REM Activer l'environnement virtuel
echo Activation de l'environnement virtuel...

CALL %VENV_DIR%\Scripts\activate

REM Vérifier si requirements.txt existe
IF EXIST %REQUIREMENTS% (
    echo Installation des dépendances depuis %REQUIREMENTS%...
    REM %VENV_DIR%\Scripts\python.exe -m pip install --upgrade pip
    REM python -m pip install --upgrade pip

    REM Loop through each line in requirements.txt
    for /F "usebackq delims=" %%i in (%REQUIREMENTS%) do (
        echo Installing %%i...
        %VENV_DIR%\Scripts\python.exe -m pip install %%i
    ) 
    
) ELSE (
    echo Le fichier %REQUIREMENTS% n'existe pas. Assurez-vous de l'avoir créé.

    EXIT /B 1
)

echo Project's dependenties initialized successfully!



