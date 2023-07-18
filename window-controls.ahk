#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#!C::
WinExist("A")
WinGetPos,,, sizeX, sizeY
winX := (A_ScreenWidth / 2) - (sizeX / 2)
winY := (A_ScreenHeight / 2) - (sizeY / 2) - 25
WinMove, winX, winY
return

#!Enter::
WinExist("A")
winWidth := A_ScreenWidth * 0.8
winHeight := A_ScreenHeight * 0.85
winX := A_ScreenWidth / 2 - (winWidth / 2)
winY := A_ScreenHeight / 2 - (winHeight / 2) - 25
WinRestore
WinMove,,, winX, winY, winWidth, winHeight
return

#!+Enter::
WinExist("A")
winWidth := A_ScreenWidth - 16
winHeight := A_ScreenHeight - 50 - 16
winX := 8
winY := 16
WinRestore
WinMove,,, winX, winY, winWidth, winHeight
return