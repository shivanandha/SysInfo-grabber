@echo off
title Getting System info
echo getting system information do not close the window
echo.
color B
cd %USERPROFILE%\Desktop\sys_info && systeminfo | findstr /g:list.txt > result.txt && wmic cpu get name >> result.txt && echo. >> result.txt && getmac >>result.txt && echo ____________________________ >> result.txt && ipconfig | findstr IPv4 >> result.txt
echo COMPLETED
timeout 1 > NUL