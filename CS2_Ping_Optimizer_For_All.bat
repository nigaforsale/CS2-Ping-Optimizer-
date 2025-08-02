::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBldQgOMAE+1EbsQ5+n//NaU8EYXUa8tedvZyPnecLFd40brFQ==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJFuN+kU+FB9RXw+WM3uGV4mVIxB8KBsBSK0h0jrw/nM2X29YqD/sbpkc8Hrb6fyzeE3w5Zysq5Z0r0ExsWsi
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 0A
title CS2 Ping Optimizer for Taiwan ISPs

echo ============================================
echo  CS2 Ping Optimizer - Taiwan Universal Version
echo  Supported ISPs: Chunghwa, FarEasTone, T-Star,
echo  Taiwan Mobile, GT, Asia Pacific Telecom
echo ============================================
echo.

echo [1/7] Flushing DNS cache...
ipconfig /flushdns

echo [2/7] Releasing and renewing IP address...
ipconfig /release
ipconfig /renew

echo [3/7] Disabling TCP auto-tuning...
netsh interface tcp set global autotuninglevel=disabled

echo [4/7] Disabling TCP Chimney Offload...
netsh interface tcp set global chimney=disabled

echo [5/7] Optimizing TCP throughput...
netsh interface tcp set global rss=enabled
netsh interface tcp set global netdma=disabled

echo [6/7] Cleaning temporary system files...
del /f /s /q %temp%\* > nul
rd /s /q %temp% > nul

echo [7/7] Setting maximum client rate for CS2...
reg add "HKCU\Software\Valve\Source\CS2" /v rate /t REG_SZ /d 786432 /f > nul

echo.
echo ============================================
echo     All tasks completed successfully!
echo     Please restart CS2 for best results.
echo ============================================
pause
