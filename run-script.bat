@echo off

call :GET_THIS_DIR
echo Estoy en este lugar: %THIS_DIR%
call :RUN_MY_SCRIPT
goto :EOF

:GET_THIS_DIR
pushd %~dp0
set THIS_DIR=%CD%
popd
goto :EOF

:RUN_MY_SCRIPT
call %THIS_DIR%\env\Scripts\activate.bat
echo Ejecutando script... Presione Alt-F4 para salir
echo. 
python %THIS_DIR%\script.py
pause
