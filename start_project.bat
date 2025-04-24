@echo off
echo Starting Scalex project...
echo.

REM Start the frontend in a new command prompt window
echo Starting frontend with yarn dev...
start cmd /k "cd /d %~dp0front && yarn run dev"

REM Wait a bit to allow the frontend to start initializing
timeout /t 2 /nobreak > nul

REM Start the backend in a new command prompt window
echo Starting backend with Django...
start cmd /k "cd /d %~dp0back && python manage.py runserver"

echo.
echo Both frontend and backend have been started in separate windows.
echo Frontend: http://localhost:3000
echo Backend: http://127.0.0.1:8000
echo.
echo Press any key to close this window...
pause > nul
