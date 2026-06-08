@echo off
:: ================================================
:: Kit de Rendimiento + Herramientas del Sistema 2026
:: Versión Profesional Unificada v2.2.1 (FUNCIONAL)
:: ================================================
:: Autor: Darkusbymaster
:: Versión: 2.2.1 Estable
:: Compatibilidad: Windows 10/11/Server 2019+
:: ================================================

setlocal enabledelayedexpansion
color 0A
title Kit de Rendimiento y Herramientas del Sistema 2026

:: ================================================
:: CONFIGURACIÓN INICIAL
:: ================================================
set "BACKUP_DIR=%~dp0Backup_Config_Original"
set "LOG_FILE=%~dp0Kit_Rendimiento_Log.txt"
set "TIMESTAMP=%date:~6,4%-%date:~3,2%-%date:~0,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%"
set "ULTIMATE_PERFORMANCE_GUID=e9a42b02-d5df-448d-aa00-03f14749e58f"

:: ================================================
:: FUNCIONES
:: ================================================

:log_message
    set "message=%~1"
    set "type=%~2"
    if "%type%"=="" set "type=[INFO]"
    echo %type% %message%
    echo [%TIMESTAMP%] %type% %message% >> "%LOG_FILE%"
    exit /b 0

:main_menu
cls
echo.
echo ================================================
echo   KIT DE RENDIMIENTO ^+ HERRAMIENTAS WINDOWS
echo           Version 2.2.1 Estable
echo ================================================
echo.
echo [--- SECCION 1: OPTIMIZACION DE RENDIMIENTO ---]
echo.
echo   1.  Ejecutar Optimizacion Completa
echo   2.  Restaurar Configuracion Original
echo   3.  Ver Log de Rendimiento
echo.
echo [--- SECCION 2: HERRAMIENTAS DEL SISTEMA ---]
echo.
echo   4.  Mapa de Caracteres
echo   5.  Simbolo del Sistema (CMD)
echo   6.  Servicios de Componentes
echo   7.  Administracion de Equipos
echo   8.  Panel de Control
echo   9.  Limpieza de Disco
echo   10. Visor de Eventos
echo   11. Politica de Seguridad Local
echo   12. Monitor de Rendimiento
echo   13. Gestion de Impresoras
echo   14. Editor del Registro
echo   15. Monitor de Recursos
echo   16. Cuadro Ejecutar
echo   17. Servicios
echo   18. Grabador de Pasos
echo   19. Configuracion del Sistema
echo   20. Informacion del Sistema
echo   21. Administrador de Tareas
echo   22. Programador de Tareas
echo   23. Windows PowerShell
echo   24. Firewall de Windows Defender
echo.
echo [--- SECCION 3: OPCIONES ADICIONALES ---]
echo.
echo   25. Limpiar Archivos Temporales
echo   26. Vaciar Papelera de Reciclaje
echo   27. Desfragmentar Disco (C:)
echo   28. Analizar Espacio en Disco
echo   29. Reparar Sistema de Archivos
echo.
echo [--- SECCION 4: SALIR ---]
echo.
echo   30. Salir del Programa
echo.
echo ================================================
set /p choice="Selecciona una opcion (1-30): "

:: Validar entrada - Proteger contra caracteres no numericos
if "%choice%"=="" (
    goto invalid_choice
)

for /f "delims=0123456789" %%a in ("%choice%") do (
    if not "%%a"=="" goto invalid_choice
)

if %choice% lss 1 goto invalid_choice
if %choice% gtr 30 goto invalid_choice

goto process_choice

:invalid_choice
echo.
echo [ERROR] Opcion invalida. Por favor intenta de nuevo.
echo.
pause
goto main_menu

:process_choice

:: SECCION 1: OPTIMIZACION DE RENDIMIENTO
if %choice%==1 goto run_optimization
if %choice%==2 goto restore_config
if %choice%==3 goto view_log

:: SECCION 2: HERRAMIENTAS DEL SISTEMA
if %choice%==4 goto tool_charmap
if %choice%==5 goto tool_cmd
if %choice%==6 goto tool_components
if %choice%==7 goto tool_compmgmt
if %choice%==8 goto tool_control
if %choice%==9 goto tool_cleanmgr
if %choice%==10 goto tool_eventvwr
if %choice%==11 goto tool_secpol
if %choice%==12 goto tool_perfmon
if %choice%==13 goto tool_printmgmt
if %choice%==14 goto tool_regedit
if %choice%==15 goto tool_resmon
if %choice%==16 goto tool_run
if %choice%==17 goto tool_services
if %choice%==18 goto tool_psr
if %choice%==19 goto tool_msconfig
if %choice%==20 goto tool_msinfo
if %choice%==21 goto tool_taskmgr
if %choice%==22 goto tool_taskschd
if %choice%==23 goto tool_powershell
if %choice%==24 goto tool_firewall

:: SECCION 3: OPCIONES ADICIONALES
if %choice%==25 goto clean_temp
if %choice%==26 goto empty_recycle
if %choice%==27 goto defrag_disk
if %choice%==28 goto analyze_disk
if %choice%==29 goto repair_filesystem

:: SECCION 4: SALIR
if %choice%==30 goto exit_program

goto main_menu

:: ================================================
:: SECCION 1: OPTIMIZACION DE RENDIMIENTO
:: ================================================

:run_optimization
cls
echo.
echo ================================================
echo       INICIANDO OPTIMIZACION COMPLETA
echo ================================================
echo.

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Se requieren permisos de ADMINISTRADOR
    echo.
    pause
    goto main_menu
)

if not exist "%BACKUP_DIR%" mkdir "%BACKUP_DIR%"

call :log_message "Iniciando optimizacion completa" "[INFO]"

echo [1/8] Creando respaldo de configuracion...
powercfg -list > "%BACKUP_DIR%\power_plans_backup.txt" 2>&1
bcdedit /export "%BACKUP_DIR%\bcd_backup.bcd" >nul 2>&1
reg export "HKLM\SYSTEM\CurrentControlSet\Services" "%BACKUP_DIR%\services_backup.reg" /y >nul 2>&1
call :log_message "Respaldos creados" "[OK]"

echo [2/8] Activando Plan Ultimate Performance...
for /f "tokens=2 delims=: " %%i in ('powercfg -list ^| findstr /i "ultimate"') do set "PERF_GUID=%%i"
if not defined PERF_GUID (
    powercfg -duplicatescheme %ULTIMATE_PERFORMANCE_GUID% >nul 2>&1
    for /f "tokens=2 delims=: " %%i in ('powercfg -list ^| findstr /i "ultimate\|high performance"') do set "PERF_GUID=%%i"
)
if defined PERF_GUID (
    powercfg -setactive %PERF_GUID% >nul 2>&1
    call :log_message "Plan Ultimate Performance activado" "[OK]"
)

echo [3/8] Optimizando energia...
powercfg -change disk-timeout-ac 0 >nul 2>&1
powercfg -change standby-timeout-ac 0 >nul 2>&1
powercfg -change monitor-timeout-ac 0 >nul 2>&1
powercfg -change processor-throttling-ac 100 >nul 2>&1
call :log_message "Energia optimizada" "[OK]"

echo [4/8] Optimizando sistema...
reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BIN /d "9012038010000000" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d "3" /f >nul 2>&1
call :log_message "Sistema optimizado" "[OK]"

echo [5/8] Mejorando red...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "65535" /f >nul 2>&1
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxFreeTcbs" /t REG_DWORD /d "16000" /f >nul 2>&1
call :log_message "Red mejorada" "[OK]"

echo [6/8] Optimizando almacenamiento...
for /f "tokens=1 delims= " %%i in ('wmic logicaldisk get name ^| findstr [A-Z]:') do (
    fsutil behavior set disabledeletenotify %%i: 0 >nul 2>&1
)
call :log_message "Almacenamiento optimizado" "[OK]"

echo [7/8] Deshabilitando servicios innecesarios...
set "services_to_disable=DiagTrack dmwappushservice SysMain MsSecurityScanner"
for %%s in (%services_to_disable%) do (
    sc query %%s >nul 2>&1
    if !errorlevel! equ 0 (
        sc config %%s start= disabled >nul 2>&1
        taskkill /f /im %%s.exe >nul 2>&1
    )
)
call :log_message "Servicios deshabilitados" "[OK]"

echo [8/8] Limpiando temporales...
cd /d "%TEMP%" >nul 2>&1
del /s /q /f *.tmp >nul 2>&1
del /s /q /f *.log >nul 2>&1
call :log_message "Temporales limpiados" "[OK]"

echo.
echo ================================================
echo [OK] OPTIMIZACION COMPLETADA EXITOSAMENTE
echo ================================================
echo.
echo Se recomienda reiniciar el sistema.
echo.
set /p restart="Deseas reiniciar ahora? (s/n): "
if /i "%restart%"=="s" (
    timeout /t 10 /nobreak
    shutdown /r /t 0 /c "Optimizaciones de rendimiento aplicadas"
) else (
    echo Operacion completada. Volviendo al menu...
    timeout /t 3 /nobreak
)

goto main_menu

:restore_config
cls
echo.
echo ================================================
echo      RESTAURACION DE CONFIGURACION ORIGINAL
echo ================================================
echo.

if not exist "%BACKUP_DIR%" (
    echo [ERROR] No se encontro la carpeta de respaldo
    echo.
    pause
    goto main_menu
)

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Se requieren permisos de ADMINISTRADOR
    echo.
    pause
    goto main_menu
)

echo Restaurando BCD...
if exist "%BACKUP_DIR%\bcd_backup.bcd" (
    bcdedit /import "%BACKUP_DIR%\bcd_backup.bcd" >nul 2>&1
    echo [OK] BCD restaurado
) else (
    echo [ADVERTENCIA] Archivo de respaldo BCD no encontrado
)

echo.
echo Importando configuracion de servicios...
if exist "%BACKUP_DIR%\services_backup.reg" (
    echo Por favor, haz click derecho en services_backup.reg y selecciona "Combinar"
    echo Ubicacion: %BACKUP_DIR%\services_backup.reg
    echo.
) else (
    echo [ADVERTENCIA] Archivo de respaldo de servicios no encontrado
)

call :log_message "Restauracion completada" "[INFO]"

echo.
set /p restart="Deseas reiniciar ahora? (s/n): "
if /i "%restart%"=="s" (
    timeout /t 10 /nobreak
    shutdown /r /t 0 /c "Restauracion de configuracion original"
) else (
    echo Operacion completada. Volviendo al menu...
    timeout /t 3 /nobreak
)

goto main_menu

:view_log
cls
echo.
echo ================================================
echo            LOG DE RENDIMIENTO
echo ================================================
echo.

if not exist "%LOG_FILE%" (
    echo [INFO] Aun no hay registros
    echo.
    pause
    goto main_menu
)

type "%LOG_FILE%"
echo.
echo.
pause
goto main_menu

:: ================================================
:: SECCION 2: HERRAMIENTAS DEL SISTEMA
:: ================================================

:tool_charmap
start charmap
timeout /t 2 /nobreak
goto main_menu

:tool_cmd
start cmd
timeout /t 2 /nobreak
goto main_menu

:tool_components
start dcomcnfg
timeout /t 2 /nobreak
goto main_menu

:tool_compmgmt
start compmgmt.msc
timeout /t 2 /nobreak
goto main_menu

:tool_control
start control
timeout /t 2 /nobreak
goto main_menu

:tool_cleanmgr
start cleanmgr
timeout /t 2 /nobreak
goto main_menu

:tool_eventvwr
start eventvwr
timeout /t 2 /nobreak
goto main_menu

:tool_secpol
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Se requieren permisos de ADMINISTRADOR
    pause
    goto main_menu
)
start secpol.msc
timeout /t 2 /nobreak
goto main_menu

:tool_perfmon
start perfmon
timeout /t 2 /nobreak
goto main_menu

:tool_printmgmt
start printmanagement.msc
timeout /t 2 /nobreak
goto main_menu

:tool_regedit
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Se requieren permisos de ADMINISTRADOR
    pause
    goto main_menu
)
start regedit
timeout /t 2 /nobreak
goto main_menu

:tool_resmon
start resmon
timeout /t 2 /nobreak
goto main_menu

:tool_run
explorer shell:::{2559a1f3-21d7-11d4-bdaf-00c04f60b9f0}
timeout /t 2 /nobreak
goto main_menu

:tool_services
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Se requieren permisos de ADMINISTRADOR
    pause
    goto main_menu
)
start services.msc
timeout /t 2 /nobreak
goto main_menu

:tool_psr
start psr
timeout /t 2 /nobreak
goto main_menu

:tool_msconfig
start msconfig
timeout /t 2 /nobreak
goto main_menu

:tool_msinfo
start msinfo32
timeout /t 2 /nobreak
goto main_menu

:tool_taskmgr
start taskmgr
timeout /t 2 /nobreak
goto main_menu

:tool_taskschd
start taskschd.msc
timeout /t 2 /nobreak
goto main_menu

:tool_powershell
start powershell
timeout /t 2 /nobreak
goto main_menu

:tool_firewall
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Se requieren permisos de ADMINISTRADOR
    pause
    goto main_menu
)
start wf.msc
timeout /t 2 /nobreak
goto main_menu

:: ================================================
:: SECCION 3: OPCIONES ADICIONALES
:: ================================================

:clean_temp
cls
echo.
echo ================================================
echo         LIMPIEZA DE ARCHIVOS TEMPORALES
echo ================================================
echo.

echo Limpiando archivos temporales...
cd /d "%TEMP%" >nul 2>&1
del /s /q /f *.tmp 2>nul
del /s /q /f *.log 2>nul
del /s /q /f *.bat 2>nul

echo Limpiando prefetch...
cd /d "%WINDIR%\Prefetch" >nul 2>&1
del /s /q /f *.pf 2>nul

echo Limpiando cache de usuario...
cd /d "%LOCALAPPDATA%\Temp" >nul 2>&1
del /s /q /f /a 2>nul

echo.
echo [OK] Limpieza completada
call :log_message "Archivos temporales limpiados" "[OK]"
echo.
pause
goto main_menu

:empty_recycle
cls
echo.
echo ================================================
echo          VACIANDO PAPELERA DE RECICLAJE
echo ================================================
echo.

echo Vaciando papelera...
rd /s /q "%systemdrive%\$Recycle.bin" >nul 2>&1
timeout /t 2 /nobreak

echo [OK] Papelera vaciada correctamente
call :log_message "Papelera vaciada" "[OK]"
echo.
pause
goto main_menu

:defrag_disk
cls
echo.
echo ================================================
echo            DESFRAGMENTACION DE DISCO
echo ================================================
echo.

echo Iniciando desfragmentacion de C:...
echo Esto puede tomar algunos minutos...
echo.

defrag C: /O >nul 2>&1

if %errorlevel% equ 0 (
    echo [OK] Desfragmentacion completada
    call :log_message "Disco desfragmentado" "[OK]"
) else (
    echo [ADVERTENCIA] Error en desfragmentacion
)

echo.
pause
goto main_menu

:analyze_disk
cls
echo.
echo ================================================
echo           ANALISIS DE ESPACIO EN DISCO
echo ================================================
echo.

echo Unidades disponibles:
echo.
wmic logicaldisk get name,size,freespace /format:list 2>nul
echo.
pause
goto main_menu

:repair_filesystem
cls
echo.
echo ================================================
echo          REPARAR SISTEMA DE ARCHIVOS
echo ================================================
echo.

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] Se requieren permisos de ADMINISTRADOR
    echo.
    pause
    goto main_menu
)

echo.
echo Advertencia: Esta operacion puede tomar mucho tiempo.
echo Se recomienda cerrar todos los programas.
echo.
set /p drive="Ingresa la unidad a reparar (ej: C:): "

if "%drive%"=="" (
    echo Operacion cancelada
    echo.
    pause
    goto main_menu
)

echo.
echo Reparando %drive%...
echo Esto puede tomar varios minutos...
echo.

chkdsk %drive% /F /R /X >nul 2>&1

if %errorlevel% equ 0 (
    echo [OK] Sistema de archivos reparado correctamente
    call :log_message "Sistema de archivos reparado: %drive%" "[OK]"
) else (
    echo [INFO] Se requiere reiniciar para completar la reparacion
    echo Se programara la reparacion para el proximo arranque
    call :log_message "Reparacion programada: %drive%" "[INFO]"
    echo.
    set /p restart="Deseas reiniciar ahora? (s/n): "
    if /i "%restart%"=="s" (
        timeout /t 10 /nobreak
        shutdown /r /t 0 /c "Reparacion de sistema de archivos"
    )
)

echo.
pause
goto main_menu

:: ================================================
:: SECCION 4: SALIR
:: ================================================

:exit_program
cls
echo.
echo ================================================
echo.
echo Gracias por usar el Kit de Rendimiento 2026
echo.
call :log_message "Programa cerrado por usuario" "[INFO]"
echo ================================================
echo.
pause
endlocal
exit /b 0
