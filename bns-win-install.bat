@echo off
:: Define tool name and paths
set BNS_NAME=bns.exe
set TARGET_DIR=%USERPROFILE%\bin

:: Create target directory if it doesn't exist
if not exist %TARGET_DIR% mkdir %TARGET_DIR%

:: Move the tool to the target directory
move %USERPROFILE%\Downloads\%BNS_NAME% %TARGET_DIR%

:: Add the directory to the PATH
setx PATH "%PATH%;%TARGET_DIR%"

echo Installation complete. Restart your terminal to use the bns tool
