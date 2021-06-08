@echo off

call :GET_THIS_DIR
echo Estoy en este lugar: %THIS_DIR%
call :CREATE_ENV_AND_INSTALL_DEPENDENCIES
goto :EOF

:GET_THIS_DIR
pushd %~dp0
set THIS_DIR=%CD%
popd
goto :EOF

:CREATE_ENV_AND_INSTALL_DEPENDENCIES
echo.
echo Creando Virtual Environment "env", aguarde
python -m venv env
echo Virtual Environment "env" creado con exito. Activando "env"
call %THIS_DIR%\env\Scripts\activate.bat
echo Instalando dependencias
pip install -r requirements.txt
pause
