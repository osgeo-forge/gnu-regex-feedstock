:: Build using ming64 via msys2
bash %RECIPE_DIR%\bld-regex.sh
if %errorlevel% neq 0 exit /b %errorlevel%

if not exist %LIBRARY_PREFIX%\mingw-w64\include ^
  mkdir %LIBRARY_PREFIX%\mingw-w64\include
if not exist %LIBRARY_PREFIX%\mingw-w64\lib ^
  mkdir %LIBRARY_PREFIX%\mingw-w64\lib

copy src\regex.h %LIBRARY_PREFIX%\mingw-w64\include
copy src\libregex.a %LIBRARY_PREFIX%\mingw-w64\lib
