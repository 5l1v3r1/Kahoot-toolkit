@echo off
SET /P _game_pin= what is the game pin?
:start
SET /P _mode= what mode do you want: normal, bot or host or drone?
ECHO %_game_pin% | clip
IF "%_mode%"=="normal" GOTO :normal
IF "%_mode%"=="bot" GOTO :bot
IF "%_mode%"=="host" GOTO :host
If "%_mode%"=="drone" GOTO :drone
echo unknown command
GOTO :me
:normal
	start "" https://kahoot.it/
	GOTO :start
:bot
	start "" https://kahoot.ninja/
	GOTO :end
:host
	start "" https://kahoot.com/
	GOTO :end
:drone
	echo this feature is currently a Work in Progress and unavalibe.
	SET /P _git= do you want to help Yes/No?
	IF "%_git%"=="yes" GOTO :github
	echo thanks anyway
	GOTO :start
:github
	start "" https://github.com/tommytippi/Kahoot-toolkit
:end