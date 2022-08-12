@echo off
:: Script created by Wileny,
:: you can modify it and use on your website, but you must clearly wrote who is the author and from where you get it
rem used wget command-line version from there: https://eternallybored.org/misc/wget/
rem or you can use the https://github.com/lifenjoiner/wget-for-windows/releases/latest mentioned by pasha-zzz
:: adds this text at the end of the existing name, but before extension
set Add=_Wilenty-Mod_
set page=https://github.com/Wilenty/7-Zip-X64-X86-with-Extracting-NSIS-script/releases
set WgetParms=--no-check-certificate
set WgetPath=.\
set Wget=wget.exe
If exist "%WinDir%\SysNative\" if exist "%WgetPath%\wget64.exe" set Wget=wget64.exe
for /f "tokens=2" %%W in (' call "%WgetPath%\%wget%" %WgetParms% --max-redirect=5 -S --spider --referer="%page%" -N "%page%/latest" 2^>^&1 ^| Find "Location" ^| Find /v "following" ') do set latest=%%W
echo. %latest%
for %%W in (%latest%) do set latest=%%~nxW
echo. latest: %latest%
set ver=%latest:v=%
set ver=%ver:.=%
echo. ver: %ver%
:: remove all entries of 7z(...).7z from below list, that you don't want to download
set DownloadList=7z%ver%-FULL.7z 7z%ver%-Install.7z 7z%ver%-Install-x64.7z 7z%ver%-Install-x86.7z 7z%ver%-OtherFiles.7z 7z%ver%-OtherFiles-x64.7z 7z%ver%-OtherFiles-x86.7z 7z%ver%-Portable.7z 7z%ver%-Portable-x64.7z 7z%ver%-Portable-x86.7z 7z%ver%-x64.7z 7z%ver%-x86.7z
for %%W in ( %DownloadList% ) do call "%WgetPath%\%wget%" %WgetParms% -nc --referer="%page%/tag/%latest%" "%page%/download/%latest%/%%W" -O "%%~nW%Add%%%~xW" -P .
pause