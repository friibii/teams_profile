@ECHO OFF
SET "UserAppPath=%USERPROFILE%"
SET "USERPROFILE=%LOCALAPPDATA%\Microsoft\Teams\CustomProfiles\%~n0"
"%UserAppPath%\AppData\Local\Microsoft\Teams\Update.exe" --processStart "Teams.exe"
