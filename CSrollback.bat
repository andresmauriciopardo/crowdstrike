@echo off
setlocal

echo First check that your windows is on security mode.

set "CSFolderPath=%system\drivers\CrowdStrike"

if exist "%CSFolderPath%" (
    for %%F in ("%CSFolderPath%\C-00000291*.sys") do (
        del /f "%%F"
    )
    
:: Reiniciar el sistema
shutdown /r /t 0
