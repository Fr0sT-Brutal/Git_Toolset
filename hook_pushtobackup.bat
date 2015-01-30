:: Push to backup remote after push to other remote
:: %1 - temporary file which contains all the paths for which the operation was started
:: %2 - Path to a file containing the error message. If there was no error, the file will be empty. 
:: %3 - The current working directory with which the script is run

@ECHO OFF

:: Get the size of error file, do push if empty, do nothing if not

if not .%~z2.==.0. goto :EOF

set Output=%TMP%\Gitpush.log

SET CDir=%~dp0%

pushd "%3"
del "%Output%"
("%CDir%\git" push --all backup 2> "%Output%")
(start "" /wait WScript "%CDir%\MsgBox.js" "Push to backup repo result" "%Output%")
popd