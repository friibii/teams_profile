@ECHO OFF
SET MSTEAMS_PROFILE=%~n0
SET "OLD_USERPROFILE=%USERPROFILE%"
SET "USERPROFILE=%LOCALAPPDATA%\Microsoft\Teams\CustomProfiles\%MSTEAMS_PROFILE%"
cd "%OLD_USERPROFILE%\AppData\Local\Microsoft\Teams"
"%OLD_USERPROFILE%\AppData\Local\Microsoft\Teams\Update.exe" --processStart "Teams.exe"