@Echo off
REM Wechsele Zeichensatz um Umlaute darzustellen.
CHCP 1252
cls
echo Es werden Admin Rechte benötigt. Check auf Adminrechten...
echo.
echo Ergebnis :
net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Admin Rechte erkannt. Befehl wird ausgeführt ...
	bcdedit /set hypervisorlaunchtype off
	Timeout 4 > nul
	Exit
    ) else (
        echo Starte diese Batch als Administrator um den Patch Vorgang zu starten.
    )

    Timeout 4 > nul
Exit