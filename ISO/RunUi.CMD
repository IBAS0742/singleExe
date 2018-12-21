@Echo Off
cd /d "%~dp0"
>NUL 2>&1 REG.exe query "HKU\S-1-5-19" || (
    ECHO SET UAC = CreateObject^("Shell.Application"^) > "%TEMP%\Getadmin.vbs"
    ECHO UAC.ShellExecute "%~f0", "%1", "", "runas", 1 >> "%TEMP%\Getadmin.vbs"
    "%TEMP%\Getadmin.vbs"
    DEL /f /q "%TEMP%\Getadmin.vbs" 2>NUL
    Exit /b
)
del "%cd%\$isoszr.reg" /f /q
del "%cd%\$iszszr.reg" /f /q
rem 以下解决安装新版好压及删除后,文件关联失败问题
REG DELETE HKCU\Software\Classes\.iso /f >NUL
REG DELETE HKCU\Software\Classes\.isz /f >NUL
REG DELETE HKCU\Software\Classes\.img /f >NUL
rem 文件关联备份及新注册
reg export HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.iso "%cd%\$isoszr.reg"
reg export HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.isz "%cd%\$iszszr.reg
rem xp 2003
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.iso /v Progid /f
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.iso /v Application /f
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.isz /v Progid /f
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.isz /v Application /f
rem win7 win8
regedit /s  "%cd%\$78iso.reg"
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.iso\UserChoice /v Progid /f
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.isz\UserChoice /v Progid /f
for /f  %%i In ('assoc .iso') do set asiso=%%i
for /f  %%i In ('assoc .isz') do set asisz=%%i
for /f  %%i In ('assoc .img') do set asimg=%%i
for /f  %%i In ('ftype isofile') do set cmiso=%%i
REG DELETE HKCR\isofile\ /f >NUL
assoc  .iso=isoui
assoc  .isz=isoui
assoc  .img=isoui
assoc  .ima=isoui
assoc  .mos=isoui
REG ADD HKCR\isoui\DefaultIcon /ve /t REG_SZ /d "%cd%\UltraISO.EXE,0" /f>NUL
ftype isoui="%cd%\ultraiso.exe" "%%1"
start /wait %CD%\UltraISO.exe %1
assoc  .iso=
assoc  .isz=
assoc  .img=
assoc  .ima=
assoc  .mos=
assoc  %asiso%
assoc  %asisz%
assoc  %asimg%
ftype isoui=
ftype %cmiso%
REG DELETE HKCR\isoui\ /f >NUL
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.ISO\OpenWithProgids\ /v isoui /f >NUL
regedit /s "%cd%\$isoszr.reg"
regedit /s "%cd%\$iszszr.reg"
"%cd%\drivers\ISOCMD.exe" -EJECT 0:
del "%cd%\$78iso.reg" /f /q
del "%cd%\$isoszr.reg" /f /q
del "%cd%\$iszszr.reg" /f /q
rd "%cd%\Ultra$ISO" /s  /q
@Echo On
Exit


