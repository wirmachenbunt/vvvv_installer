@echo off 
echo Installing Microsoft DirectX
DXSetup\dxsetup.exe /silent

echo Installing C++ Redist 2008
data\2008.exe /q

echo Installing C++ Redist 2010
data\2010.exe /q

echo Installing C++ Redist 2012
data\2012.exe /q

echo Installing C++ Redist 2013
data\2013.exe /q

echo Installing C++ Redist 2015
data\2015.exe /q

echo Installing C++ Redist 2017
data\2017.exe /q

echo Adding vvvv to Microsoft Defender Exceptions
Powershell.exe -executionpolicy remotesigned -File  data\SetVVVVDefenderException.ps1

echo DONE! Happy patching :)

pause