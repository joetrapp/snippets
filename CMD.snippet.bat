#### Fix Windows 10 upgrade

echo off
cls
echo Fixing Windows Install
echo Start the install and wait till it starts downloading the update to finish running this
pause
copy /Y C:\Windows\System32\wimgapi.dll C:\Windows10Upgrade\