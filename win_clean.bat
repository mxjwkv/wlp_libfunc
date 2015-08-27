::win_clean.bat
::-------------
::    Created: 25-JUN-2013
::Last Update: 05-MAR-2015
::
::WINDOWS
@echo off
if exist *.obj del *.obj
::if exist *.txt del *.txt
:: remove dir tree recursively "/S" and quietly "/Q"
::rmdir /S /Q debug
::rmdir /S /Q release
echo Clean completed.
