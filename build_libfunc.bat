::build_libfunc.bat
::-----------------------
::    Created: 26-AUG-2015
::Last Update: 26-AUG-2015
::
::WINDOWS
@echo off
:: -------------------------------------
:: Build Release Lib - Multi-Threaded
echo --- Release ------------------------------------------
..\..\__incrbuildnum __build_num_release -L
cl *.cpp /O2 /MT /c /EHsc /W3
lib *.obj /OUT:..\lib\libfunc.lib
lib /LIST:..\lib\libfunc.txt ..\lib\libfunc.lib
echo libfunc.lib contains:
type ..\lib\libfunc.txt
:: -------------------------------------
:: Build DEBUG Lib - Multi-Threaded
echo --- Debug --------------------------------------------
..\..\__incrbuildnum __build_num_debug -L
cl *.cpp /D "_DEBUG" /MTd /O2 /c /EHsc /W3
:::lib *.obj /OUT:..\libfunc_win32D.lib
lib *.obj /OUT:..\lib\libfuncD.lib
