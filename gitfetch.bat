:: Universal (Git/SVN) fetch command
@echo off

IF NOT EXIST .git (
	echo "%CD%" is not a Git repo!
	goto :EOF
)

IF NOT EXIST .git\svn (
	echo Pulling from git repo...
	git pull
) ELSE (
	echo Fetching from SVN repo...
	git svn fetch
)