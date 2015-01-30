@ECHO OFF

SET CDir=%~dp0%

echo Custom Git scripts:

dir /b "%CDir%\*.bat" | findstr ".bat"