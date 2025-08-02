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
::Zh4grVQjdCuDJFuN+kU+FB9RXw+WM3uGV4mVIxB8KBsBSK0h0jrw/nM2X29YqD/sbpkc8HrbmH9Cnas=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 0A
title CS2 Ping Optimizer (Chunghwa Telecom Edition)

echo Flushing DNS cache...
ipconfig /flushdns

echo Releasing current IP and requesting a new one...
ipconfig /release
ipconfig /renew

echo Disabling TCP auto-tuning...
netsh interface tcp set global autotuninglevel=disabled

echo Disabling TCP Chimney Offload...
netsh int tcp set global chimney=disabled

echo Configuring network throughput settings...
netsh interface tcp set global rss=enabled
netsh interface tcp set global netdma=disabled

echo Cleaning temporary system files...
del /f /s /q %temp%\*
rd /s /q %temp%

echo Optimization complete. Please restart CS2 for best results.
pause
