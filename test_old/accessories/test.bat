rem @echo off
cls
del test_rubens.txt
setlocal EnableDelayedExpansion
for %%i in (*.c) do (
	set "_program_c=%%i"
	echo !_program_c:~0,-2! >> test_rubens.txt 
)