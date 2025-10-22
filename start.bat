@echo off
echo Starting Login System...
echo.
echo 1. Installing dependencies...
call npm run install-all
echo.
echo 2. Creating .env file...
node setup.js
echo.
echo 3. Starting application...
echo Backend will run on http://localhost:5000
echo Frontend will run on http://localhost:3000
echo.
echo Test Account:
echo Email: admin@example.com
echo Password: password123
echo.
call npm run dev
pause
