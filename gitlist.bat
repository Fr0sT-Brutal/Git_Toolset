:: Show sorted list of all files in repo

@ECHO OFF

SETLOCAL

:: Get initial commit in repo. This command will print to STDERR in case of trouble
:: so FirstComm won't receive any value.
:: Note the ^=, simple = gets eaten
for /f %%s in ('git rev-list --max-parents^=0 HEAD') do (
	set FirstComm=%%s
)

if NOT DEFINED FirstComm (
	pause
	goto :EOF
)

git show --pretty="format:" --name-only %FirstComm%..HEAD | sort | uniq