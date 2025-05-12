@echo off
title Solix Server - Node.js
color 0A
cd /d "%~dp0"

:: ============================================
::  🚀 SOLIX SERVER - STARTUP SCRIPT
::  📌 Tác giả: @tunankies
::  📝 Bản quyền © 2024 @tunankies. All rights reserved.
:: ============================================

:: Kiểm tra xem Node.js đã được cài đặt chưa
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo [❌] Node.js chưa được cài đặt. Vui lòng tải về từ https://nodejs.org/
    pause
    exit
)

echo ============================================
echo  🚀 Đang khởi động Tool Solix...
echo  📌 Tác giả: @tunankies
echo ============================================
echo.

:: Vòng lặp để tự động khởi động lại nếu có lỗi
:run
node solix.js
if %errorlevel% neq 0 (
    echo [⚠️] Đang khởi động lại sau 25 giây...
    timeout /t 25 /nobreak >nul
    goto run
)

echo [✅] Server đã dừng.
pause
