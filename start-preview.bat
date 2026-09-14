@echo off
setlocal
title Academic Website - Local Preview
cd /d "%~dp0"
if errorlevel 1 goto directory_error

where jekyll >nul 2>&1
if not errorlevel 1 goto start_server
rem Support the standard RubyInstaller location before Windows refreshes PATH.
if exist "%SystemDrive%\Ruby33-x64\bin\jekyll.bat" set "PATH=%SystemDrive%\Ruby33-x64\bin;%PATH%"
where jekyll >nul 2>&1
if errorlevel 1 goto missing_jekyll

:start_server
echo Starting local preview at http://localhost:4000
echo Your browser will open when Jekyll is ready.
echo Keep this window open. Press Ctrl+C to stop the server.
echo.
call jekyll serve --open-url
if errorlevel 1 goto startup_error
exit /b 0

:missing_jekyll
echo Jekyll was not found in PATH.
echo.
echo First-time setup:
echo 1. Install Ruby+Devkit from https://rubyinstaller.org/
echo 2. Complete the MSYS2 setup offered by the installer.
echo 3. Open a new terminal and run: gem install jekyll bundler
echo 4. Double-click this script again.
echo.
pause
exit /b 1

:directory_error
echo Could not open the project directory.
pause
exit /b 1

:startup_error
echo.
echo Jekyll could not start. Check the error message above.
echo If port 4000 is already in use, stop the other preview first.
pause
exit /b 1
