@ECHO OFF
CLS
ECHO 1.Default
ECHO 2.ShellMinimal
ECHO.
CHOICE /C 12 /M "Type your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 2 GOTO ShellMinimal
IF ERRORLEVEL 1 GOTO Default

:Default
mkdir build
call emcc --bind src/main.cpp src/draw.cpp -s USE_SDL=2 -o build/index.html --use-preload-plugins -I include
GOTO End

:ShellMinimal
mkdir build
call emcc --bind src/main.cpp src/draw.cpp -s USE_SDL=2 -o build/index.html --use-preload-plugins -I include --shell-file html/shell_minimal.html
GOTO End

:End