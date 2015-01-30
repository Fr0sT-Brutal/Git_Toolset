Git helpers set
===============

Set of my helper scripts for use with Git. I placed them in `%Git%\bin` so they're accessible when git itself is accessible.

bfg.bat
-------

Wrapper for launching `BFG.jar`, an [amazing tool](https://rtyley.github.io/bfg-repo-cleaner) for repo cleanup.

gitlist.bat
-----------

Outputs list of all files ever contained in repo. Especially useful when cleaning a repo with **BFG**.

gitprune.bat
------------

Shortcut for 2 Git commands to prune and recompress a repo. Useful when cleaning a repo with **BFG**.

gitfetch.bat
------------

Universal command to fetch from Git or SVN repo.

gitcustom.bat
-------------

Lists all `*.bat` files in `%Git%\bin` in case you forgot the exact names of custom scripts.

hook_pushtobackup.bat
---------------------

Hook script for **TortoiseGit** to push to "backup" remote right after every push. Must be configured in **TortoiseGit** interface.

MsgBox.js
---------

Script for **Windows Scripting Host**, shows message box window with text and optionally a content of some file. Used in `hook_pushtobackup.bat`.

git-credential-repeater
-----------------------

Elementary script described in the [Store credentials permanently via helpers](https://github.com/Fr0sT-Brutal/Articles/tree/master/git-credentials) article.